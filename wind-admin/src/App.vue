<template>
  <el-config-provider :locale="locale">
    <router-view />
  </el-config-provider>
</template>

<script>
import zhCn from 'element-plus/es/locale/lang/zh-cn'
import { ElConfigProvider } from 'element-plus'
export default {
  name: 'App',
  components: { ElConfigProvider },
  setup() {
    return {
      locale: zhCn
    }
  }

}
</script>
