@Entry
@Component
struct Index {
  @State message: string = 'Hello World 啊打；开始；看； 阿卡打开；打开'

  build() {
    Column(){

      Row().height(25)
      Image($r('app.media.left_arrow')).width(30).height(30)
      Column() {
        Text('欢迎登录数美链')
          .fontSize(28).margin({top:50})
        Row(){
          Text('+86')
            .fontSize(14)
          Text('').height(14).width(.5).margin({left:14}).backgroundColor(0xFF999999)
          TextInput({ placeholder: '请输入手机号', })
            .caretColor(0xffff4080)
            .backgroundColor(0x00ffffff)
            .height(40)
            .fontSize(18)
            .fontFamily("sans-serif")
            .fontStyle(FontStyle.Normal)
            .fontColor(0xff000000)
            .onChange((value: string) => {
            })
        }.alignItems(VerticalAlign.Center).margin({top:60})
        Text('').height(.5).width(295).backgroundColor(0xFF999999)
        Text('未注册的手机号验证后自动创建数美链账户').fontColor(0xFF999999).fontSize(12).margin({top:12})
        Row(){
          Checkbox({name: 'checkbox1',  group: 'checkboxGroup'})
            .select(true)
            .selectedColor(0xed6f21)
            .onChange((value: boolean) => {
              console.info('Checkbox1 change is'+ value)
            }).width(16).margin({right:4})
          Text('我已阅读并同意《用户协议》、《隐私政策》，并授权数美链使用该数美链账号信息（如昵称、头像）进行统一管理。').fontColor(0xFF999999).width(273).fontSize(12)
        }.margin({top: 50}).alignItems(VerticalAlign.Top)
        Button('获取短信验证码').width(295).height(44).borderRadius(22).backgroundColor(0xffff4080).margin({top:20}).onClick(()=>{
          console.info('获取短信验证码')
        })
        Row(){
          Text('密码登录').fontColor(0xFF666666).fontSize(13)
        }.margin({top:20}).justifyContent(FlexAlign.End).width('90%')
        Row(){Image($r('app.media.app_icon')).margin({top:60}).width(60).borderRadius(30)}.justifyContent(FlexAlign.Center).width('100%')
      }.margin({left:24}).alignItems(HorizontalAlign.Start)
  }.height('100%').padding(16).alignItems(HorizontalAlign.Start)}
}