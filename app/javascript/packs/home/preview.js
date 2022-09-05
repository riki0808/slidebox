//資料タイトルを入力したら見積書プレビューの品目が書き換わる
let docTitleInput = document.getElementById("doc_title");
let docTitleOutput = document.getElementById("js-doc-title-preview");

docTitleInput.addEventListener(
  "input",
  function () {
    docTitleOutput.innerText = docTitleInput.value;
  },
  false
);

//希望納期を決めると見積書プレビューに反映する
let deadlineInput = document.getElementById("js-deadline-input");
let deadlineOutput = document.getElementById("js-deadline-output");

deadlineInput.addEventListener(
  "change",
  function () {
    deadlineOutput.innerText = deadlineInput.value;
  },
  false
);

//見積書のお金の計算をする
function calPage() {
  let setSheet = document.getElementById("js-set-sheet");
  //お見積金額
  let showMoneyText = document.getElementById("js-show-money");
  //価格
  let pricetext = document.getElementById("js-price");
  //小計
  let subtotalText = document.getElementById("js-subtotal");
  //消費税
  let taxText = document.getElementById("js-tax");
  //合計金額
  let totalText = document.getElementById("js-total");

  setSheet.innerText = pdfCount.innerText;

  let price = 3000 * pdfCount.innerText;
  pricetext.innerText = price.toLocaleString();

  let subtotal = price;
  subtotalText.innerText = subtotal.toLocaleString();

  let tax = subtotal * 0.1;
  taxText.innerText = tax.toLocaleString();

  let total = Number(subtotal) + Number(tax);
  totalText.innerText = total.toLocaleString();

  let showMoney = total;
  showMoneyText.innerText = showMoney.toLocaleString();

  //docデータを送信するために！
  let hiddenPdfCount = document.getElementById("js-hidden-pdf-count");
  hiddenPdfCount.value = pdfCount.innerText;
}

//pdfアップすると枚数自動計算する
let pdfCount = document.getElementById("js-pdf-count");

let pdf = document.getElementById("js-up-file");
pdf.addEventListener(
  "input",
  function () {
    let reader = new FileReader();
    reader.readAsBinaryString(pdf.files[0]);
    reader.onloadend = function () {
      let pdfPage = reader.result.match(/\/Type[\s]*\/Page[^s]/g).length;
      pdfCount.innerText = pdfPage;
      calPage();
    };
  },
  false
);

if (pdf) {
  pdf.addEventListener(
    "change",
    function () {
      let doc = this.files[0];
      let fileLabel = document.getElementById("js-file-label");
      fileLabel.textContent = doc.name;
    },
    false
  );
}

let pptx = document.getElementById("js-up-file-pptx");
if (pptx) {
  pptx.addEventListener(
    "change",
    function () {
      let docPptx = this.files[0];
      let fileLabelPptx = document.getElementById("js-file-label-pptx");
      fileLabelPptx.textContent = docPptx.name;
    },
    false
  );
}


let docSubmit = document.getElementById("js-doc-submit");

docSubmit.onclick = function (e) {
  e.preventDefault();
  let docForm = document.getElementById("js-doc-form");
  let options = {
    text: "見積書のダウンロードはしましたか？", //\nでテキストの改行が出来ます
    buttons: {
      cancel: "まだ！",
      ok: "依頼する！",
    },
  };
  swal(options).then(function (value) {
    if (value) {
      swal('依頼完了しました！').then(function () {
        docForm.submit();
      });
    }
  });
};
