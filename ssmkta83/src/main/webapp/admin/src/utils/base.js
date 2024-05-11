const base = {
    get() {
        return {
            url : "http://localhost:8080/ssmkta83/",
            name: "ssmkta83",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssmkta83/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "微信小程序的在线投稿系统"
        } 
    }
}
export default base
