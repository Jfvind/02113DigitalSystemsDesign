(function() {
const notesElem = document.getElementById('notes');
const durationsElem = document.getElementById('durations');
const isFractionElem = document.getElementById('is_fraction_checkbox');
const memoryContentElem = document.getElementById('memory_content');
const downloadButtonElem = document.getElementById('download_button');
//const uploadButtonElem = document.getElementById('upload_button');
const clearButtonElem = document.getElementById('clear_button');
const fileNameElem = document.getElementById('file_name');
const copyElem = document.getElementById('copy');
const toastBody = document.getElementById('toast_body');

const noteMap = { // Uses same variable names and values as on arduino website
    NOTE_B0: 31,
    NOTE_C1: 33,
    NOTE_CS1: 35,
    NOTE_D1: 37,
    NOTE_DS1: 39,
    NOTE_E1: 41,
    NOTE_F1: 44,
    NOTE_FS1: 46,
    NOTE_G1: 49,
    NOTE_GS1: 52,
    NOTE_A1: 55,
    NOTE_AS1: 58,
    NOTE_B1: 62,
    NOTE_C2: 65,
    NOTE_CS2: 69,
    NOTE_D2: 73,
    NOTE_DS2: 78,
    NOTE_E2: 82,
    NOTE_F2: 87,
    NOTE_FS2: 93,
    NOTE_G2: 98,
    NOTE_GS2: 104,
    NOTE_A2: 110,
    NOTE_AS2: 117,
    NOTE_B2: 123,
    NOTE_C3: 131,
    NOTE_CS3: 139,
    NOTE_DB3: 139,
    NOTE_D3: 147,
    NOTE_DS3: 156,
    NOTE_EB3: 156,
    NOTE_E3: 165,
    NOTE_F3: 175,
    NOTE_FS3: 185,
    NOTE_G3: 196,
    NOTE_GS3: 208,
    NOTE_A3: 220,
    NOTE_AS3: 233,
    NOTE_B3: 247,
    NOTE_C4: 262,
    NOTE_CS4: 277,
    NOTE_D4: 294,
    NOTE_DS4: 311,
    NOTE_E4: 330,
    NOTE_F4: 349,
    NOTE_FS4: 370,
    NOTE_G4: 392,
    NOTE_GS4: 415,
    NOTE_A4: 440,
    NOTE_AS4: 466,
    NOTE_B4: 494,
    NOTE_C5: 523,
    NOTE_CS5: 554,
    NOTE_D5: 587,
    NOTE_DS5: 622,
    NOTE_E5: 659,
    NOTE_F5: 698,
    NOTE_FS5: 740,
    NOTE_G5: 784,
    NOTE_GS5: 831,
    NOTE_A5: 880,
    NOTE_AS5: 932,
    NOTE_B5: 988,
    NOTE_C6: 1047,
    NOTE_CS6: 1109,
    NOTE_D6: 1175,
    NOTE_DS6: 1245,
    NOTE_E6: 1319,
    NOTE_F6: 1397,
    NOTE_FS6: 1480,
    NOTE_G6: 1568,
    NOTE_GS6: 1661,
    NOTE_A6: 1760,
    NOTE_AS6: 1865,
    NOTE_B6: 1976,
    NOTE_C7: 2093,
    NOTE_CS7: 2217,
    NOTE_D7: 2349,
    NOTE_DS7: 2489,
    NOTE_E7: 2637,
    NOTE_F7: 2794,
    NOTE_FS7: 2960,
    NOTE_G7: 3136,
    NOTE_GS7: 3322,
    NOTE_A7: 3520,
    NOTE_AS7: 3729,
    NOTE_B7: 3951,
    NOTE_C8: 4186,
    NOTE_CS8: 4435,
    NOTE_D8: 4699,
    NOTE_DS8: 4978,
    REST: 0
};

const notes = [];
const notes_frequency = [];

const durations = [];
const durations_period = [];

let is_fraction = false;
const MAX_ENTRIES = 255;
const MEMORY_SIZE = 256;

function updateNotesFromString(content){
    let error = false;
    const cleaned = content.replace(/\s+/g, '').toUpperCase();
    entries = cleaned.split(',');

    notes.length = 0;
    notes_frequency.length = 0;

    if(entries.length == 0){
        return error;
    }

    for (const note of entries) {
        if (!(note in noteMap)) {
            console.log(`Invalid note: "${note}"`);
            error = true;
            notes.length = 0;
            notes_frequency.length = 0;
            return error;
        }

        notes.push(note);

        const freq = noteMap[note];
        //const halfPeriod = freq === 0 ? 0 : Math.floor(1 / (2 * freq * 0.00000032)); //100MHz prescaled 32
        notes_frequency.push(freq);
    }

    return error;
}

function updateDurationsFromString(content){
    let error = false;
    const cleaned = content.replace(/\s+/g, '').toUpperCase();
    entries = cleaned.split(',');

    durations.length = 0;
    durations_period.length = 0;

    if(entries.length == 0){
        return error;
    }

    const integerEntries = [];
    

    for (let i = 0; i < entries.length; i++) {
        const entry = entries[i];
    
        // Check if entry is a valid integer string
        if (!/^[-]?\d+$/.test(entry)) {
            console.log(`Invalid entry at index ${i}: "${entry}" is not an integer`);
            error = true;
            return error;
        }

        // Convert and store in the integer array
        integerEntries.push(parseInt(entry, 10));
    }

    for (const duration of integerEntries) {
        if ( (is_fraction && (duration < 1 || duration > 64)) || 
             (!is_fraction && (duration < 1 || duration > 4000)) ) {
            console.log(`Invalid duration of note: "${duration}"`);
            error = true;
            durations.length = 0;
            durations_period.length = 0;
            return error;
        }

        durations.push(duration);

        if(is_fraction){
            durations_period.push(Math.floor(1000/duration));
        } else {
            durations_period.push(duration);
        }
    }

    return error;
}

notesElem.addEventListener('change', () => notesContentOnChange());
durationsElem.addEventListener('change', () => durationsContentOnChange());
isFractionElem.addEventListener('change', () => isFractionOnChange());

function notesContentOnChange(){
    console.log("Notes content changed by user.");
    let error = updateNotesFromString(notesElem.value);
    if (error){
        showToast("The note sequence contains mistakes.", true);
    }
    console.log(notes);
    console.log(notes_frequency);
    updateMemoryContent();
}

function durationsContentOnChange(){
    console.log("Duration content changed by user.");
    let error = updateDurationsFromString(durationsElem.value);
    if (error){
        showToast("The duration sequence contains mistakes.", true);
    }
    console.log(durations);
    console.log(durations_period);
    updateMemoryContent();
}

function isFractionOnChange() {
    if (isFractionElem.checked) {
        is_fraction = true;
        console.log("Checkbox is_fraction is now checked");
        // You can run your logic here
    } else {
        is_fraction = false;
        console.log("Checkbox is_fraction is now unchecked");
    }
    durationsContentOnChange();
}

let audioCtx;
let isPlaying = false;
let currentOscillator = null;
let stopRequested = false;
let currentGainNode = null;

document.getElementById("playButton").addEventListener("click", playTune);
document.getElementById("stopButton").addEventListener("click", stopTune);

const volumeSlider = document.getElementById("volumeSlider");
const volumeValueDisplay = document.getElementById("volumeValue");

// Update volume display live
volumeSlider.addEventListener("input", () => {
    volumeValueDisplay.textContent = volumeSlider.value * 100 + " %";
    if (currentGainNode) {
        currentGainNode.gain.value = parseFloat(volumeSlider.value);
    }
});

function playTone(freq, duration) {
    return new Promise((resolve) => {
        if (stopRequested) return resolve();

        if (freq === 0) { // REST
            setTimeout(() => resolve(), duration);
            return;
        }

        currentOscillator = audioCtx.createOscillator();
        currentGainNode = audioCtx.createGain();

        currentGainNode.gain.value = parseFloat(volumeSlider.value); // Get volume from slider

        currentOscillator.type = "square";
        currentOscillator.frequency.value = freq;

        currentOscillator.connect(currentGainNode);
        currentGainNode.connect(audioCtx.destination);

        currentOscillator.start();

        setTimeout(() => {
            if (currentOscillator) {
                currentOscillator.stop();
                currentOscillator = null;
            }
            currentGainNode = null;
            resolve();
        }, duration);
    });
}

async function playTune() {
    if (isPlaying) return;
    isPlaying = true;
    stopRequested = false;
    audioCtx = new (window.AudioContext || window.webkitAudioContext)();

    for (let i = 0; i < notes_frequency.length; i++) {
        if (stopRequested) break;

        const freq = notes_frequency[i];
        const duration = durations_period[i];

        await playTone(freq, duration);

        // Optional short pause between notes
        await new Promise(r => setTimeout(r, 50));
    }

    isPlaying = false;
}

function stopTune() {
    stopRequested = true;

    if (currentOscillator) {
        try {
            currentOscillator.stop();
        } catch (e) {
            console.warn("Oscillator already stopped or invalid:", e);
        }
        currentOscillator = null;
    }

    if (audioCtx) {
        audioCtx.close().catch(e => console.warn("Error closing audio context:", e));
        audioCtx = null;
    }

    isPlaying = false;
}

//Clock
//100000000
//Prescaler
//32
//Prescaled period
//0.00000032
//Max value of  for *Steps of prescaled half period*
//for note NOTE_B0, 31Hz, 50403 --->>> 16 bits
function noteFrequencyToBinary(freq){
    let halfPeriod = freq === 0 ? 0 : Math.floor(1 / (2 * freq * 0.00000032)); //100MHz prescaled 32
    var bin = halfPeriod.toString(2);
    bin = "0000000000000000".substr(bin.length) + bin;
    return bin;
}

//Max is 4000 -> 12 bits
function durationMsToBinary(duration_ms){
    console.log(duration_ms)
    var bin = duration_ms.toString(2);
    bin = "000000000000".substr(bin.length) + bin;
    return bin;
}

/*
function binaryToColour(binayColour){
    if (binayColour.length != 7){
        //console.log("F1 " + binayColour.length + " <" + binayColour + ">");
        return parseInt("1111111", 2);
    }
    bits = binayColour.split('');
    for (let i = 0; i < bits.length; i++){
        if (bits[i] != '0' && bits[i] != '1'){
            //console.log("F2");
            return parseInt("1111111", 2);
        }
    }
    //console.log(binayColour + " " + parseInt(binayColour, 2))
    let result = parseInt(binayColour, 2);
    if (result == 64) {
        return -1;
    } else {
        return result;
    }
}
*/


function generateMemoryContent() {
    let text = "";
    for (let i = 0; i < notes_frequency.length; i++) {
        text += durationMsToBinary(durations_period[i]) + noteFrequencyToBinary(notes_frequency[i]);
        text += "\r\n";
    }
    for (let i = notes_frequency.length; i < MEMORY_SIZE; i++) {
        text += "0000000000000000000000000000"
        if (i < MEMORY_SIZE - 1){
            text += "\r\n";
        }
    }
    return text;
}


function updateMemoryContent() {
    if(notes_frequency.length == 0 || durations_period.length == 0){
        memoryContentElem.value = "";    
    } else if (notes_frequency.length != durations_period.length){
        memoryContentElem.value = "";
        showToast("Notes and durations have different lenghts.", true);
    } else if (notes_frequency.length > MAX_ENTRIES){
        memoryContentElem.value = "";
        showToast("There is a maximum of 255 notes.", true);
    } else {
        memoryContentElem.value = generateMemoryContent();
    }
}


memoryContentElem.addEventListener('change', () => memoryContentOnChange());

function memoryContentOnChange(){
    console.log("Memory content changed by user.");
    updateMemoryContent();
    showToast("The raw memory content cannot be changed manually.", true);
//    let error = updateAllFromMemoryString(memoryContentElem.value);
//    if (error){
//        showToast("The raw memory content contains mistakes.", true);
//    }
}

function dowloadMemFile(){
    if(notes_frequency.length == 0 || durations_period.length == 0){
        showToast("Notes and/or durations are empty.", true);
        return;    
    } else if (notes_frequency.length != durations_period.length){
        showToast("Notes and durations have different lenghts.", true);
        return;
    } else if (notes_frequency.length > MAX_ENTRIES){
        showToast("There is a maximum of 255 notes.", true);
        return;
    }
    var content = generateMemoryContent();
    const link = document.createElement("a");
    const file = new Blob([content], { type: 'text/plain' });
    link.href = URL.createObjectURL(file);
    link.download = fileNameElem.value + ".mem";
    link.click();
    URL.revokeObjectURL(link.href);
}

/*
function updateAllFromMemoryString(content){
    let error = false;
    lines = content.split('\n');
    let i = 0;
    for (; i < lines.length && i < mapWidth * mapHeight; i++){
        lines[i] = lines[i].replaceAll('\r', '');
        colours[i] = binaryToColour(lines[i]);
       if (colours[i] < -1 || colours[i] > 63){
           error = true;
       }
    }
    for (; i < mapWidth * mapHeight; i++){
        colours[i] = binaryToColour("1111111");
        error = true;
    }
    for (let i = 0; i < mapWidth * mapHeight; i++) {
        selected[i] = (i == 0);
        let pixel = document.getElementById("pixel-" + String(i));
        pixel.innerHTML = generatePixelSvgContent(i);
    }
    var lastPixelSelected = 0;
    updatePreview();
    updateMemoryContent();
    return error;
}

uploadButtonElem.onchange = function() {
    if(uploadButtonElem.files.length == 0 || typeof uploadButtonElem.files === 'undefined'){
        //console.log("File input not valid or empty or more than 1.");
        showToast("Loading file failed. File input not valid, empty, or including multiple files.", true);
        return;
    }
    file = uploadButtonElem.files[0];

    if (!file || typeof file === 'undefined') {
        //console.log("Cannot load files.");
        showToast("Loading file failed. File is NULL or undefined.", true);
        return;
    }

    const reader = new FileReader();
    reader.onload = function(e) {
      const content = e.target.result;
      //console.log(content); // Print content to console
      let error = updateAllFromMemoryString(content);
      if (error){
          showToast("The uploaded file contains mistakes or it is too long or too short.", true);
      }
    };
    reader.readAsText(file);
    fileNameElem.value = (file.name).slice(0, file.name.length - 4);
}
*/

function clearAll(){
    stopTune();
    notes.length = 0;
    notes_frequency.length = 0;
    durations.length = 0;
    durations_period.length = 0;
    durationsElem.value = "";
    notesElem.value = "";
    updateMemoryContent();
    fileNameElem.value = "tune";
}

downloadButtonElem.addEventListener('click', () => dowloadMemFile());
clearButtonElem.addEventListener('click', () => clearAll());

function copyToClipboard(){
  navigator.clipboard.writeText(generateMemoryContent());
  showToast("Memory content copied to the clipboard.", false);
}

copyElem.addEventListener('click', () => copyToClipboard());

function fileNameOnChange(){
    if (fileNameElem.value.length == 0){
        fileNameElem.value = "tune";
        showToast("The file name cannot be empty. Using default name 'tune.mem'.", true);
        return;
    }
    let pattern = /^[ \dA-Za-z_-]+$/;
    if (!pattern.test(fileNameElem.value)){
        fileNameElem.value = "tune";
        showToast("The file name cannot contain charachers other than letters, numbers, spaces, '-', and '_'. Using default name 'tune.mem'.", true);
        return;
    }
    fileNameElem.value = fileNameElem.value.trim();
    if (fileNameElem.value.includes(" ")){
        showToast("It is not recommended to have spaces in the file name.", false);
    }
}

fileNameElem.addEventListener('change', () => fileNameOnChange());

function showToast(message, red) {
    if (red){
        toastBody.innerHTML = `<p class="fw-bold text-danger m-0 p-0">` + message + `</p>`;
    } else {
        toastBody.innerHTML = `<p class="fw-bold m-0 p-0">` + message + `</p>`;
    }
    var toastElList = [].slice.call(document.querySelectorAll('.toast'))
    var toastList = toastElList.map(function(toastEl) {
        return new bootstrap.Toast(toastEl)
    })
    toastList.forEach(toast => toast.show())
}

window.onload = function() {
    fileNameElem.value = "tune";
};

//SCOPE
})();