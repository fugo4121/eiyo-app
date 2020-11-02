function sleep_kcal() {
  // ビューの要素を取得
  const SleepTimeChoose = document.getElementById("sleep-time");
  const SleepKcal = document.getElementById("sleep-kcal");

  // プルダウンが変化した時、発火
  SleepTimeChoose.onchange = function() {
    // 選択行取得
    const ChooseDate = SleepTimeChoose.selectedIndex
    // コントローラーで取得したテーブルのカラムデータより、選択した行と紐づいたデータを代入
    SleepKcal.innerHTML = gon.sleep_kcal[ChooseDate]
  }
}
window.addEventListener("load", sleep_kcal);


