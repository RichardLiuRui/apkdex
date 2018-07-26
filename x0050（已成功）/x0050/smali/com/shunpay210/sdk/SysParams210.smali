.class public Lcom/shunpay210/sdk/SysParams210;
.super Ljava/lang/Object;
.source "SysParams210.java"


# static fields
.field private static mGetInt:Ljava/lang/reflect/Method;

.field private static mGetObject:Ljava/lang/reflect/Method;

.field private static mSystemPropertiesClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/shunpay210/sdk/SysParams210;->mGetInt:Ljava/lang/reflect/Method;

    .line 23
    sput-object v0, Lcom/shunpay210/sdk/SysParams210;->mGetObject:Ljava/lang/reflect/Method;

    .line 24
    sput-object v0, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 117
    .local v3, "proc":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exit value = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    :cond_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    .line 121
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 120
    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 122
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v4, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 124
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "proc":Ljava/lang/Process;
    .end local v4    # "stringBuffer":Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 125
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "proc":Ljava/lang/Process;
    .restart local v4    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "proc":Ljava/lang/Process;
    .end local v4    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_2
    const-string v5, ""

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "arg4"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Lcom/shunpay210/sdk/SysParams210;->load()V

    .line 87
    :try_start_0
    sget-object v2, Lcom/shunpay210/sdk/SysParams210;->mGetObject:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 88
    .local v1, "v0_1":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 93
    .end local v1    # "v0_1":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "v0":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSysParams(Landroid/content/Context;)Ljava/lang/String;
    .locals 36
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    :try_start_0
    const-string v33, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/telephony/TelephonyManager;

    .line 31
    .local v28, "tm":Landroid/telephony/TelephonyManager;
    const-string v33, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/net/wifi/WifiManager;

    .line 32
    .local v32, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v32 .. v32}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 33
    .local v16, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    .line 34
    .local v15, "imei":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v18

    .line 35
    .local v18, "mac":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 36
    .local v6, "buildId":Ljava/lang/String;
    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 37
    .local v5, "buildDisplay":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 38
    .local v7, "buildMnufacturer":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 39
    .local v3, "buildBrand":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 40
    .local v2, "buildBoard":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 41
    .local v4, "buildDevice":Ljava/lang/String;
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 42
    .local v8, "buildProduct":Ljava/lang/String;
    sget-object v29, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 43
    .local v29, "versionCodeName":Ljava/lang/String;
    sget-object v30, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 44
    .local v30, "versionRelease":Ljava/lang/String;
    sget-object v31, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 45
    .local v31, "versionSdk":Ljava/lang/String;
    const-string v33, "gsm.version.baseband"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 46
    .local v13, "gsmVersionBaseBand":Ljava/lang/String;
    const-string v33, "ro.product.model"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 47
    .local v24, "roProductModel":Ljava/lang/String;
    invoke-static {}, Lcom/shunpay210/sdk/SysParams210;->getlinuxversion()Ljava/lang/String;

    move-result-object v17

    .line 49
    .local v17, "linuxVersion":Ljava/lang/String;
    const-string v33, "ro.product.cpu.abi"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "cpuAbi":Ljava/lang/String;
    const-string v33, "ro.product.cpu.abi2"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "cpuAbi2":Ljava/lang/String;
    const-string v33, "ro.build.hidden_ver"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "hiddenVer":Ljava/lang/String;
    invoke-static {}, Lcom/shunpay210/sdk/SysParams210;->getfingerprint()Ljava/lang/String;

    move-result-object v12

    .line 53
    .local v12, "fingerPrint":Ljava/lang/String;
    const-string v33, "ro.serialno"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 54
    .local v27, "roSerialNo":Ljava/lang/String;
    const-string v33, "ro.hardware"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 55
    .local v21, "roHardware":Ljava/lang/String;
    const-string v33, "ro.board.platform"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 56
    .local v20, "roBoardPlatform":Ljava/lang/String;
    const-string v33, "ro.mediatek.platform"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 57
    .local v22, "roMediatekPlatform":Ljava/lang/String;
    const-string v33, "ro.product.real_model"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 58
    .local v26, "roProductRealModel":Ljava/lang/String;
    const-string v33, "ro.product.model.replace"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 59
    .local v25, "roProductModelReplace":Ljava/lang/String;
    const-string v33, "ro.product.brand.replace"

    invoke-static/range {v33 .. v33}, Lcom/shunpay210/sdk/SysParams210;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 63
    .local v23, "roProductBrandReplace":Ljava/lang/String;
    const-string v33, "{\"imei\":\"%s\",\"mac\":\"%s\",\"Build.id\":\"%s\",\"Build.DISPLAY\":\"%s\",\"Build.MANUFACTURER\":\"%s\",\"Build.BRAND\":\"%s\",\"Build.PRODUCT\":\"%s\",\"Build.DEVICE\":\"%s\",\"Build.BOARD\":\"%s\",\"VERSION.RELEASE\":\"%s\",\"VERSION.SDK\":\"%s\",\"VERSION.CODENAME\":\"%s\",\"linux.version\":\"%s\",\"gsm.version.baseband\":\"%s\",\"ro.product.model\":\"%s\",\"ro.product.cpu.abi\":\"%s\",\"ro.product.cpu.abi2\":\"%s\",\"ro.build.hidden_ver\":\"%s\",\"ro.build.fingerprint\":\"%s\",\"ro.serialno\":\"%s\",\"ro.hardware\":\"%s\",\"ro.board.platform\":\"%s\",\"ro.mediatek.platform\":\"%s\",\"ro.product.real_model\":\"%s\",\"ro.product.model.replace\":\"%s\",\"ro.product.brand.replace\":\"%s\"}"

    const/16 v34, 0x1a

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    .line 69
    aput-object v15, v34, v35

    const/16 v35, 0x1

    aput-object v18, v34, v35

    const/16 v35, 0x2

    aput-object v6, v34, v35

    const/16 v35, 0x3

    aput-object v5, v34, v35

    const/16 v35, 0x4

    aput-object v7, v34, v35

    const/16 v35, 0x5

    .line 70
    aput-object v3, v34, v35

    const/16 v35, 0x6

    aput-object v8, v34, v35

    const/16 v35, 0x7

    aput-object v4, v34, v35

    const/16 v35, 0x8

    aput-object v2, v34, v35

    const/16 v35, 0x9

    aput-object v30, v34, v35

    const/16 v35, 0xa

    .line 71
    aput-object v31, v34, v35

    const/16 v35, 0xb

    aput-object v29, v34, v35

    const/16 v35, 0xc

    aput-object v17, v34, v35

    const/16 v35, 0xd

    aput-object v13, v34, v35

    const/16 v35, 0xe

    aput-object v30, v34, v35

    const/16 v35, 0xf

    .line 72
    aput-object v9, v34, v35

    const/16 v35, 0x10

    aput-object v10, v34, v35

    const/16 v35, 0x11

    aput-object v14, v34, v35

    const/16 v35, 0x12

    aput-object v12, v34, v35

    const/16 v35, 0x13

    .line 73
    aput-object v27, v34, v35

    const/16 v35, 0x14

    aput-object v21, v34, v35

    const/16 v35, 0x15

    aput-object v20, v34, v35

    const/16 v35, 0x16

    aput-object v22, v34, v35

    const/16 v35, 0x17

    .line 74
    aput-object v26, v34, v35

    const/16 v35, 0x18

    aput-object v25, v34, v35

    const/16 v35, 0x19

    aput-object v23, v34, v35

    .line 63
    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    .line 80
    .end local v2    # "buildBoard":Ljava/lang/String;
    .end local v3    # "buildBrand":Ljava/lang/String;
    .end local v4    # "buildDevice":Ljava/lang/String;
    .end local v5    # "buildDisplay":Ljava/lang/String;
    .end local v6    # "buildId":Ljava/lang/String;
    .end local v7    # "buildMnufacturer":Ljava/lang/String;
    .end local v8    # "buildProduct":Ljava/lang/String;
    .end local v9    # "cpuAbi":Ljava/lang/String;
    .end local v10    # "cpuAbi2":Ljava/lang/String;
    .end local v12    # "fingerPrint":Ljava/lang/String;
    .end local v13    # "gsmVersionBaseBand":Ljava/lang/String;
    .end local v14    # "hiddenVer":Ljava/lang/String;
    .end local v15    # "imei":Ljava/lang/String;
    .end local v16    # "info":Landroid/net/wifi/WifiInfo;
    .end local v17    # "linuxVersion":Ljava/lang/String;
    .end local v18    # "mac":Ljava/lang/String;
    .end local v20    # "roBoardPlatform":Ljava/lang/String;
    .end local v21    # "roHardware":Ljava/lang/String;
    .end local v22    # "roMediatekPlatform":Ljava/lang/String;
    .end local v23    # "roProductBrandReplace":Ljava/lang/String;
    .end local v24    # "roProductModel":Ljava/lang/String;
    .end local v25    # "roProductModelReplace":Ljava/lang/String;
    .end local v26    # "roProductRealModel":Ljava/lang/String;
    .end local v27    # "roSerialNo":Ljava/lang/String;
    .end local v28    # "tm":Landroid/telephony/TelephonyManager;
    .end local v29    # "versionCodeName":Ljava/lang/String;
    .end local v30    # "versionRelease":Ljava/lang/String;
    .end local v31    # "versionSdk":Ljava/lang/String;
    .end local v32    # "wifi":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v19

    .line 77
    :catch_0
    move-exception v11

    .line 79
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    const-string v19, ""

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getprop "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shunpay210/sdk/SysParams210;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getfingerprint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 145
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    :cond_0
    const-string v1, "ro.build.description"

    invoke-static {v1}, Lcom/shunpay210/sdk/SysParams210;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getlinuxversion()Ljava/lang/String;
    .locals 11

    .prologue
    .line 154
    const-string v9, ""

    .line 155
    .local v9, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 156
    .local v4, "fileStream":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 157
    .local v1, "bufStream":Ljava/io/BufferedInputStream;
    const/4 v6, 0x0

    .line 159
    .local v6, "outStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v10, "/proc/version"

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .local v5, "fileStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 161
    .end local v1    # "bufStream":Ljava/io/BufferedInputStream;
    .local v2, "bufStream":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 163
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .local v7, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x400

    :try_start_3
    new-array v0, v10, [B

    .line 165
    .local v0, "buf":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    .line 166
    .local v8, "read_len":I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_3

    .line 171
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v9

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 179
    .end local v0    # "buf":[B
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .end local v8    # "read_len":I
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :goto_1
    if-eqz v6, :cond_0

    .line 181
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 187
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 189
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 195
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 197
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 203
    :cond_2
    :goto_4
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 169
    .end local v1    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buf":[B
    .restart local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "read_len":I
    :cond_3
    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v7, v0, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_0

    .line 172
    .end local v0    # "buf":[B
    .end local v8    # "read_len":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .line 174
    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    :goto_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 177
    .local v3, "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 182
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 184
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 190
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 192
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 198
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 200
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 175
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .end local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object v6, v7

    .end local v7    # "outStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outStream":Ljava/io/ByteArrayOutputStream;
    move-object v1, v2

    .end local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 172
    :catch_8
    move-exception v3

    goto :goto_5

    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "bufStream":Ljava/io/BufferedInputStream;
    .end local v4    # "fileStream":Ljava/io/FileInputStream;
    .restart local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "fileStream":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v1, v2

    .end local v2    # "bufStream":Ljava/io/BufferedInputStream;
    .restart local v1    # "bufStream":Ljava/io/BufferedInputStream;
    move-object v4, v5

    .end local v5    # "fileStream":Ljava/io/FileInputStream;
    .restart local v4    # "fileStream":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private static load()V
    .locals 6

    .prologue
    .line 99
    :try_start_0
    sget-object v1, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 109
    .local v0, "v0":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 102
    .end local v0    # "v0":Ljava/lang/Exception;
    :cond_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    .line 103
    sget-object v1, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/shunpay210/sdk/SysParams210;->mGetObject:Ljava/lang/reflect/Method;

    .line 104
    sget-object v1, Lcom/shunpay210/sdk/SysParams210;->mSystemPropertiesClass:Ljava/lang/Class;

    const-string v2, "getInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/shunpay210/sdk/SysParams210;->mGetInt:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .restart local v0    # "v0":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
