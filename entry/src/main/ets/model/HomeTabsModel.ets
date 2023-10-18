export const HomeTabsList: Array<HomeTabsItem> = [
  {
    tab: '全部',
    child: [{ tab: '热门' }, { tab: '最新' }, { tab: '近七天' }]
  }, {
  tab: '全部',
  child: [{ tab: '热门' }, { tab: '最新' }, { tab: '近七天' }]
}, {
  tab: '全部',
  child: [{ tab: '热门' }, { tab: '最新' }, { tab: '近七天' }]
}, {
  tab: '全部',
  child: [{ tab: '热门' }, { tab: '最新' }, { tab: '近七天' }]
},
]

interface HomeTabsItem {
  tab: string,
  child?: Array<HomeTabsItem>
}