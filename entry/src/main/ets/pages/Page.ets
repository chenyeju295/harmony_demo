import { BottomTabsList } from '../model/BottomTabsModel';
import { Home } from './Home';

import { Mine } from './Mine';

@Entry
@Component
struct Page {
  @State fontColor: string = '#182431'
  @State selectedFontColor: string = '#007DFF'
  @State @Watch('onIndexChange') bottomTabIndex: number = 1;
  private controller: TabsController = new TabsController();

  @Builder TabBuilder(index: number) {
    Column() {
      Image(this.bottomTabIndex === index ? BottomTabsList[index].iconSelected : BottomTabsList[index].icon)
        .width(24)
        .height(24)
        .margin({ bottom: 4 })
        .objectFit(ImageFit.Contain)
      Text(BottomTabsList[index].text)
        .fontColor(this.bottomTabIndex === index ? this.selectedFontColor : this.fontColor)
        .fontSize(10)
        .fontWeight(500)
        .lineHeight(14)
    }.width('100%')
  }

  onIndexChange() {
    this.controller.changeIndex(this.bottomTabIndex);
  }

  build() {
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.End, justifyContent: FlexAlign.End }) {
      Tabs({ barPosition: BarPosition.End, index: 2, controller: this.controller }) {

        TabContent() {
          Home()
        }.tabBar(this.TabBuilder(0))

        TabContent() {
          Text('我的页面')
        }.tabBar(this.TabBuilder(1))

        TabContent() {
          Mine()
        }.tabBar(this.TabBuilder(2))
      }
      .vertical(false)
      .barHeight(56)
      .width('100%')
      .height('100%')
      .onChange((index: number) => {
        this.bottomTabIndex = index;
      })
    }.width('100%')

  }
}


