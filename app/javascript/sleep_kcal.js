function sleep_kcal() {
  // ビューの要素を取得
  const SleepTimeChoose = document.getElementById("sleep-time");
  const SleepKcal = document.getElementById("sleep-kcal");

  // プルダウンが変化した時、発火
  SleepTimeChoose.onchange = function() {

    // プルダウンの全配列データ(全てのoption要素)を取得
    const SleepTimeChooses = SleepTimeChoose.options ;
    // プルダウンの全配列データ分繰り返す
    for ( var i=0,l=SleepTimeChooses.length; l>i; i++ ) {
      // 睡眠時間選択した時、条件発生。選択行[i]
      if ( SleepTimeChooses[i].selected ) {
        // コントローラーから取得したカロリーデータを、選択した行に紐づいた値で代入
        SleepKcal.innerHTML = gon.sleep_kcal[i]
      }
    }
  }
}
window.addEventListener("load", sleep_kcal);


