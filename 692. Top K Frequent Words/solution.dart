class Solution {
  List<String> topKFrequent(List<String> words, int k) {
      final Map<String,int> uniqueWords = {};
      words.forEach((e){uniqueWords[e] = (uniqueWords[e]??0) + 1;});
      final wordsList = uniqueWords.entries.toList();
      wordsList.sort((a,b)=> a.value != b.value ?b.value.compareTo(a.value):a.key.compareTo(b.key));
      return wordsList.take(k).map((e)=>e.key).toList();
  }
}
