
import { Mine } from './Mine';
@Entry
@Component
struct Page {

  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State currentIndex: number = 0
  private controller: TabsController = new TabsController();
  @Builder TabBuilder(index: number,tag: string) {
    Column() {
      Image($r('app.media.icon'))
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
        .objectFit(ImageFit.Contain)
      Text(tag)
        .fontColor(this.currentIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.End }) {
      Tabs({ barPosition: BarPosition.End,index: 2, controller: this.controller }) {

        TabContent() {
          Text('首页')
        }.tabBar(this.TabBuilder(0,'首页'))
        TabContent() {
          Text('我的页面')
        }.tabBar(this.TabBuilder(1,'首页'))
        TabContent() {
          Mine()
        }.tabBar(this.TabBuilder(2,'我的页面'))
      }
      .vertical(false)
      .barHeight(56)
      .width('100%')
      .height('100%')
      .onChange((index: number) => {
        this.currentIndex = index
      })
    }.width('100%')

  }

}


