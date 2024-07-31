### 使用引脚

|引脚|定义|输入输出|描述|
|:-:|:-|:-:|-:|
|10|小米安全芯片|out|
|18|xq03p_reset|out|0
|38|蓝色灯|out|1有效
|39|黄色灯|out|1有效
|47|mmc detect|in
|49|ircut1|out|脉冲
|50|ircut2|out|脉冲
|51|rest|in|按下0
|54|sd|out|0
|60|camera light|out|脉冲
|62||out
|63|speaker|out|1
|64||in|


### 使用
#### 播放音乐
```bash
sox speech.mp3 -t raw -r 8000 -e signed -b 16 -c 1 test.pcm
curl -u root:123456 --data-binary @test.pcm http://192.168.0.102/play_audio

```

### 配置
