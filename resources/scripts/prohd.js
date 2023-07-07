window.addEventListener('load', function() {

    // handle jumping to the selected page from the toolbar
    document.querySelector('#submit').addEventListener('click', function() {
        const input = document.getElementById('gotoPage');
        pbEvents.emit('pb-refresh', 'transcription', {"root": input.value});
    });

    // add copy-to-clipboard functionality for the citation button
    const view = document.getElementById('commentary');
    if (view) {
        view.addEventListener('pb-update', function(ev) {
            const clipTrigger = ev.detail.root.querySelector('#clipboard-trigger');
            const clipContent = ev.detail.root.querySelector('#clipboard-citation');

            // set link and label to current url
            var url = ev.detail.root.querySelector('#url');
            var link = location.href;
            
            url.href = link;
            url.innerText = link;

            clipTrigger.addEventListener('click', function() {
                navigator.clipboard.writeText(clipContent.innerText);
            });
        });
    }
});