other_status(){
    if [ "$(command -v ss-server)" ]; then
        if [[ ! -z "${PID}" ]]; then
            echo -e "${Info} shadowsocklibev-libev (pid ${PID}) is already running."
        else
            echo -e "${Point} shadowsocklibev-libev is already installed but not running."
        fi
    fi
    
    if [ "$(command -v ssserver)" ]; then
        if [[ ! -z "${RUST_PID}" ]]; then
            echo -e "${Info} shadowsocklibev-rust (pid ${PID}) is already running."
        else
            echo -e "${Point} shadowsocklibev-rust is already installed but not running."
        fi
    fi
    
    if [ "$(command -v v2ray-plugin)" ]; then
        V2_PID=`ps -ef |grep -v grep | grep v2ray-plugin |awk '{print $2}'`
        
        if [[ ! -z "${V2_PID}" ]]; then
            echo -e "${Info} v2ray-plugin (pid ${V2_PID}) is already running."
        else
            echo -e "${Point} v2ray-plugin is already installed but not running."
        fi
    fi
    
    if [ "$(command -v kcptun-server)" ]; then
        KP_PID=`ps -ef |grep -v grep | grep kcptun-server |awk '{print $2}'`
        
        if [[ ! -z "${KP_PID}" ]]; then
            echo -e "${Info} kcptun (pid ${KP_PID}) is already running."
        else
            echo -e "${Point} kcptun is already installed but not running."
        fi
    fi
    
    if [ "$(command -v obfs-server)" ]; then
        OBFS_PID=`ps -ef |grep -v grep | grep obfs-server |awk '{print $2}'`

        if [[ ! -z "${OBFS_PID}" ]]; then
            echo -e "${Info} simple-obfs (pid ${OBFS_PID}) is already running."
        else
            echo -e "${Point} simple-obfs is already installed but not running."
        fi
    fi
    
    if [ "$(command -v gq-server)" ]; then
        GQ_PID=`ps -ef |grep -v grep | grep gq-server |awk '{print $2}'`
        
        if [[ ! -z "${GQ_PID}" ]]; then
            echo -e "${Info} goquiet (pid ${GQ_PID}) is already running."
        else
            echo -e "${Point} goquiet is already installed but not running."
        fi
    fi
    
    if [ "$(command -v ck-server)" ]; then
        CK_PID=`ps -ef |grep -v grep | grep ck-server |awk '{print $2}'`
        
        if [[ ! -z "${CK_PID}" ]]; then
            echo -e "${Info} cloak (pid ${CK_PID}) is already running."
        else
            echo -e "${Point} cloak is already installed but not running."
        fi
    fi
    
    if [ -e "${CADDY_FILE}" ]; then
        CADDY_PID=`ps -ef |grep -v grep | grep caddy |awk '{print $2}'`
        
        if [[ ! -z "${CADDY_PID}" ]]; then
            echo -e "${Info} caddy (pid ${CADDY_PID}) is already running."
        else
            echo -e "${Point} caddy is already installed but not running."
        fi
    fi
}