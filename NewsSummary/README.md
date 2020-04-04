# Article Summary

---

## UPDATE 2020.04.03

---

第一次上传项目

## 项目概述

---

- 本项目可以从新闻或其他文章中提取最重要的N个句子组成摘要。
- 词向量使用word2vec，用维基百科和新闻语料进行预训练；句向量使用[SIF(smooth inverse frequency)](https://openreview.net/pdf?id=SyK00v5xx)方法。
- 项目逻辑如图所示

![articlesummary](https://github.com/kkb-Alex/job_hunting/tree/master/NewsSummary/articlesummary.jpg)

## 依赖环境、库

---

Python3、numpy、jieba、re、gemsim.models.word2vec、sklearn.decomposition.PCA

## 项目结构

- articleSummary.py: 用Flask在网页端启动项目程序
- templates: html文件夹
- static: css文件夹
- summaryModel.py: 摘要模型文件
- utils.py: 分词、分句、向量化函数等
- data
  - model_191115_1(包括两个npy文件): word2vec模型文件，size=250
  - 哈工大停用标点标
  - example.txt: 示例新闻

## 模型分享

---

[word2vec预训练模型、停用词标和示例文件](https://pan.baidu.com/s/1h8Vp6ASu1rDIcbaFZ1Qu8w)(密码xm3h)

下载后解压到data目录下即可

## 使用样例

---

Sample1

```
Title: 麻省理工学院为无人机配备RFID技术，进行仓库货物管理
Content: 
麻省理工学院的研究团队为无人机在仓库中使用RFID技术进行库存查找等工作，创造了一种聪明的新方式。它允许公司使用更小，更安全的无人机在巨型建筑物中找到之前无法找到的东西。
使用RFID标签更换仓库中的条形码，将帮助提升自动化并提高库存管理的准确性。与条形码不同，RFID标签不需要对准扫描，标签上包含的信息可以更广泛和更容易地更改。它们也可以很便宜，尽管有优点，但是它具有局限性，对于跟踪商品没有设定RFID标准，“标签冲突”可能会阻止读卡器同时从多个标签上拾取信号。扫描RFID标签的方式也会在大型仓库内引起尴尬的问题。固定的RFID阅读器和阅读器天线只能扫描通过设定阈值的标签，手持式读取器需要人员出去手动扫描物品。
几家公司已经解决了无人机读取RFID的技术问题。配有RFID读卡器的无人机可以代替库存盘点的人物，并以更少的麻烦更快地完成工作。一个人需要梯子或电梯进入的高箱，可以通过无人机很容易地达到，无人机可以被编程为独立地导航空间，并且他们比执行大规模的重复任务的准确性和效率要比人类更好。
目前市场上的RFID无人机需要庞大的读卡器才能连接到无人机的本身。这意味着它们必须足够大，以支持附加硬件的尺寸和重量，使其存在坠机风险。麻省理工学院的新解决方案，名为Rfly，允许无人机阅读RFID标签，而不用捆绑巨型读卡器。相反，无人机配备了一个微小的继电器，它像Wi-Fi中继器一样。无人机接收从远程RFID读取器发送的信号，然后转发它读取附近的标签。由于继电器很小，这意味着可以使用更小巧的无人机，可以使用塑料零件，可以适应较窄的空间，不会造成人身伤害的危险。
麻省理工学院的Rfly系统本质上是对现有技术的一个聪明的补充，它不仅消除了额外的RFID读取器，而且由于它是一个更轻的解决方案，允许小型无人机与大型无人机做同样的工作。研究团队正在马萨诸塞州的零售商测试该系统。

Summary:
麻省理工学院的研究团队为无人机在仓库中使用RFID技术进行库存查找等工作，创造了一种聪明的新方式。配有RFID读卡器的无人机可以代替库存盘点的人物，并以更少的麻烦更快地完成工作。目前市场上的RFID无人机需要庞大的读卡器才能连接到无人机的本身
```

Sample2

```
Title: 美国新冠肺炎累计确诊逾27万例 单日新增3.5万例
Content:
据美国约翰斯·霍普金斯大学发布的实时统计数据显示，截至北京时间4月4日06时30分左右，全球新冠肺炎确诊病例已超过100万例，共计1094068例。其中美国累计确诊273880例；死亡病例7077例；康复人数9521人。与前一天6时30分数据相比，美国新增确诊病例35060例，连续第5天新增确诊数超2万；死亡病例新增1319例。
全美范围内，疫情“震中”的纽约州累计确诊数已超10万例。纽约州州长库莫在记者会上表示，该州累计新冠肺炎确诊病例102863例，死亡病例2935例。当地时间4月3日，纽约州州长科莫警告称，纽约市的呼吸机告急。科莫表示，由于死亡人数和住院人数激增，他将命令将数百台呼吸机重新分配给重症冠状病毒患者不堪重负的医院。
美国总统特朗普批准田纳西州因新冠肺炎疫情进入“重大灾难”状态。截至目前，特朗普已经批准30个州、华盛顿哥伦比亚特区以及美属维尔京群岛、北马里亚纳群岛、关岛和波多黎各进入“重大灾难”状态。

Summary:
其中美国累计确诊273880例；死亡病例7077例；康复人数9521人。与前一天6时30分数据相比，美国新增确诊病例35060例，连续第5天新增确诊数超2万；死亡病例新增1319例。全美范围内，疫情“震中”的纽约州累计确诊数已超10万例。
```

## 模型缺点

---

- 由于模型是直接提取原文的句子，因此对短新闻/短文章效果不佳；同时，无法保证语句一定通顺。