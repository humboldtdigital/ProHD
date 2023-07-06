window.addEventListener('load', function() {
    document.querySelector('#submit').addEventListener('click', function() {
        const input = document.getElementById('gotoPage');
        // console.log('gotopage %o', input.value);

        pbEvents.emit('pb-refresh', 'transcription', {"root": input.value});
    });
});