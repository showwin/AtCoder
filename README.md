AtCoder
=======

http://atcoder.jp の回答集  


# Tips

## Python

### 再帰呼び出し回数の最大値設定

```python
import sys
sys.setrecursionlimit(10 ** 7)
```
をすることで、10**7回まで再帰的に関数を呼ぶことができる。
これを設定しないと(デフォルトはこれより小さいので) 回答が正しくても `RecursionError: maximum recursion depth exceeded in comparison` が発生し得る

### 入力された文字列をsplitしながらintにキャストする

```python
lst = [list(map(int, input().split())) for _ in range(N)]
```

文字列のままsortすると正しくソートできないので、必ず入力時点で数字にすること

### sortした結果の取得

`sorted()` で取得すると O(N^2) かかる。
優先度付きキュー heapq を使うと、O(logN) で取得できる。
(Bgn137.D)

# memo
* まずはO(N)で計算できる方法を考えると良さそう
