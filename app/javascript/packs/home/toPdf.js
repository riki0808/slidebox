let pdfBtn = document.getElementById('js-canvas-btn');


pdfBtn.addEventListener('click', function(e) {
  let canvas = document.getElementById('js-canvas');
  htmlToImage.toCanvas(canvas).then(function(capture) {
    console.log(capture);
    let imgData = capture.toDataURL('image/png');
    let doc = new jsPDF();
    let width = doc.internal.pageSize.width
    doc.addImage(imgData, 'PNG', 10, 10, width * 0.9, 0);
    doc.save("sample.pdf");
  });
}, false);
