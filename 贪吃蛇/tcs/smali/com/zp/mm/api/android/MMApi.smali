.class public Lcom/zp/mm/api/android/MMApi;
.super Ljava/lang/Object;
.source "MMApi.java"


# static fields
.field private static final GATE:Ljava/lang/String; = "http://120.25.132.133"

.field private static connector:Lcom/zp/mm/api/ServerConnector;

.field private static isDebug:Z

.field private static packageInfoCache:Landroid/content/pm/PackageInfo;

.field private static packagesCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/zp/mm/api/impl/XmlServerConnector;

    const-string v1, "http://120.25.132.133"

    invoke-direct {v0, v1}, Lcom/zp/mm/api/impl/XmlServerConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    .line 62
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->initialize()V

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static appStart(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-static {p0, v0, v0}, Lcom/zp/mm/api/android/MMApi;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-static {p0, p1, p2, v0, v0}, Lcom/zp/mm/api/android/MMApi;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "channelId"    # Ljava/lang/String;
    .param p3, "imei"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 232
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 233
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    if-nez v9, :cond_0

    .line 234
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    if-nez p3, :cond_1

    .line 239
    :try_start_0
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p3

    .line 241
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 243
    :cond_2
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getDeviceId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :catch_0
    move-exception v8

    .line 258
    .local v8, "e":Lorg/json/JSONException;
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v0, v8}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 245
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    if-nez p4, :cond_4

    .line 246
    :try_start_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p4

    .line 248
    :cond_4
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 250
    :cond_5
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getSubscriberId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_6
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    const/4 v1, 0x1

    invoke-static {p0, v9, p3, p4, v1}, Lcom/zp/mm/api/android/MMApi;->createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/zp/mm/api/ServerConnector;->appStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/zp/mm/api/Command;

    move-result-object v7

    .line 254
    .local v7, "command":Lcom/zp/mm/api/Command;
    if-eqz v7, :cond_7

    .line 255
    invoke-interface {v7}, Lcom/zp/mm/api/Command;->executeCommand()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :cond_7
    return-void
.end method

.method public static varargs createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "payCode"    # J
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "exData"    # Ljava/lang/String;
    .param p6, "imei"    # Ljava/lang/String;
    .param p7, "imsi"    # Ljava/lang/String;
    .param p8, "parameters"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 112
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 113
    .local v14, "tm":Landroid/telephony/TelephonyManager;
    if-nez v14, :cond_0

    .line 114
    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_0
    if-nez p6, :cond_1

    .line 118
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p6

    .line 120
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 122
    :cond_2
    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "MMApi getDeviceId failed. "

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_3
    if-nez p7, :cond_4

    .line 125
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p7

    .line 127
    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_6

    .line 129
    :cond_5
    new-instance v2, Lcom/zp/mm/api/MMApiException;

    const-string v3, "MMApi getSubscriberId failed. "

    invoke-direct {v2, v3}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_6
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->isDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 137
    :cond_7
    :try_start_0
    sget-object v2, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    const/4 v3, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-static {p0, v14, v0, v1, v3}, Lcom/zp/mm/api/android/MMApi;->createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v11

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p8

    invoke-interface/range {v2 .. v12}, Lcom/zp/mm/api/ServerConnector;->createCodePay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePayCommand;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 138
    :catch_0
    move-exception v13

    .line 139
    .local v13, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/zp/mm/api/MMApiException;

    invoke-direct {v2, v13}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "payCode"    # J
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "exData"    # Ljava/lang/String;
    .param p6, "parameters"    # [Lorg/apache/http/NameValuePair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 94
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/zp/mm/api/android/MMApi;->createCodePay(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)Lcom/zp/mm/api/CodePay;

    move-result-object v0

    return-object v0
.end method

.method private static createSystemInfo(Landroid/content/Context;Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "imei"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 263
    const-string v25, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 264
    .local v22, "wifi":Landroid/net/wifi/WifiManager;
    if-nez v22, :cond_4

    const/16 v23, 0x0

    .line 265
    .local v23, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    const-string v25, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    .line 268
    .local v24, "windowManager":Landroid/view/WindowManager;
    :try_start_0
    sget-object v25, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;

    if-nez v25, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v16

    .line 269
    .local v16, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_1
    sput-object v16, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    :goto_2
    const-string v25, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 274
    .local v4, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v4, :cond_6

    const/4 v3, 0x0

    .line 276
    .local v3, "activeNetInfo":Landroid/net/NetworkInfo;
    :goto_3
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v17, "systemInfo":Lorg/json/JSONObject;
    const-string v25, "imei"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v25, "imsi"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-string v25, "brand"

    sget-object v26, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    const-string v25, "manufacturer"

    sget-object v26, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    const-string v25, "model"

    sget-object v26, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    const-string v25, "release"

    sget-object v26, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    const-string v25, "sdk"

    sget v26, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    const-string v25, "fingerprint"

    sget-object v26, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    const-string v25, "board"

    sget-object v26, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    :try_start_1
    const-string v25, "serial"

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getSerial()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_11

    .line 292
    :goto_4
    const-string v25, "display"

    sget-object v26, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v25, "id"

    sget-object v26, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    :try_start_2
    const-string v25, "radio"

    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getRadioVersion()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_10

    .line 298
    :goto_5
    const-string v25, "host"

    sget-object v26, Landroid/os/Build;->HOST:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    const-string v25, "bootloader"

    sget-object v26, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    const-string v25, "cpuAbi"

    sget-object v26, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v25, "cpuAbi2"

    sget-object v26, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v25, "device"

    sget-object v26, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    const-string v25, "hardware"

    sget-object v26, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    const-string v25, "product"

    sget-object v26, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    const-string v25, "tags"

    sget-object v26, Landroid/os/Build;->TAGS:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 307
    const-string v25, "time"

    sget-wide v26, Landroid/os/Build;->TIME:J

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    const-string v25, "type"

    sget-object v26, Landroid/os/Build;->TYPE:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v25, "user"

    sget-object v26, Landroid/os/Build;->USER:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    const-string v25, "codename"

    sget-object v26, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    const-string v25, "incremental"

    sget-object v26, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    const-string v25, "unknown"

    const-string v26, "unknown"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    if-eqz p4, :cond_0

    .line 314
    const/4 v8, 0x0

    .line 316
    .local v8, "input":Ljava/io/InputStream;
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/proc/meminfo"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    .end local v8    # "input":Ljava/io/InputStream;
    .local v9, "input":Ljava/io/InputStream;
    :try_start_4
    const-string v25, "meminfo"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 320
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 322
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    :goto_6
    const/4 v8, 0x0

    .line 324
    :try_start_5
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/proc/cpuinfo"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 325
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :try_start_6
    const-string v25, "cpuinfo"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_e
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 328
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    .end local v9    # "input":Ljava/io/InputStream;
    :cond_0
    :goto_7
    const-string v25, "networkOperatorName"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    if-eqz v23, :cond_1

    .line 335
    const-string v25, "macAddress"

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    const-string v25, "ssid"

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 337
    const-string v25, "bssid"

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v12

    .line 339
    .local v12, "ipAddress":I
    const-string v25, "ipAddress"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v0, v12, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    shr-int/lit8 v27, v12, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    shr-int/lit8 v27, v12, 0x10

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    shr-int/lit8 v27, v12, 0x18

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    .end local v12    # "ipAddress":I
    :cond_1
    if-eqz v3, :cond_2

    .line 342
    const-string v25, "activeNetInfo"

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    :cond_2
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 346
    .local v5, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 347
    const-string v25, "height"

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const-string v25, "width"

    iget v0, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v25, "density"

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 351
    if-eqz p4, :cond_8

    .line 352
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 353
    .local v10, "installed":Lorg/json/JSONArray;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 354
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_3

    .line 358
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 363
    :try_start_7
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 364
    .local v13, "name":Ljava/lang/String;
    iget-object v15, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 365
    .local v15, "packageName":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 366
    .local v21, "versionName":Ljava/lang/String;
    iget v0, v14, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v20, v0

    .line 368
    .local v20, "versionCode":I
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 369
    .local v11, "installedPackage":Lorg/json/JSONObject;
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-static {v11, v0, v13}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    const-string v25, "packageName"

    move-object/from16 v0, v25

    invoke-static {v11, v0, v15}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    const-string v25, "versionName"

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v11, v0, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    const-string v25, "versionCode"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_8

    .line 374
    .end local v11    # "installedPackage":Lorg/json/JSONObject;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v20    # "versionCode":I
    .end local v21    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v25

    goto :goto_8

    .line 264
    .end local v3    # "activeNetInfo":Landroid/net/NetworkInfo;
    .end local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "installed":Lorg/json/JSONArray;
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v17    # "systemInfo":Lorg/json/JSONObject;
    .end local v23    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v24    # "windowManager":Landroid/view/WindowManager;
    :cond_4
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v23

    goto/16 :goto_0

    .line 268
    .restart local v23    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v24    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    :try_start_8
    sget-object v16, Lcom/zp/mm/api/android/MMApi;->packagesCache:Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 270
    :catch_1
    move-exception v18

    .line 271
    .local v18, "t":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .restart local v16    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_2

    .line 274
    .end local v18    # "t":Ljava/lang/Throwable;
    .restart local v4    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_6
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    goto/16 :goto_3

    .line 318
    .restart local v3    # "activeNetInfo":Landroid/net/NetworkInfo;
    .restart local v8    # "input":Ljava/io/InputStream;
    .restart local v17    # "systemInfo":Lorg/json/JSONObject;
    :catch_2
    move-exception v25

    .line 320
    :goto_9
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_6

    :catchall_0
    move-exception v25

    :goto_a
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .line 326
    :catch_3
    move-exception v25

    .line 328
    :goto_b
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v25

    :goto_c
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .line 376
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v10    # "installed":Lorg/json/JSONArray;
    :cond_7
    const-string v25, "installed"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 379
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "installed":Lorg/json/JSONArray;
    :cond_8
    const-string v25, "http.agent"

    invoke-static/range {v25 .. v25}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 380
    .local v19, "userAgent":Ljava/lang/String;
    if-nez v19, :cond_9

    .line 381
    invoke-static {}, Lcom/zp/mm/api/android/MMApi;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v19

    .line 383
    :cond_9
    const-string v25, "userAgent"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    :try_start_9
    sget-object v25, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;

    if-nez v25, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 386
    .local v7, "info":Landroid/content/pm/PackageInfo;
    :goto_d
    sput-object v7, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;

    .line 388
    iget-object v0, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 389
    .restart local v13    # "name":Ljava/lang/String;
    const-string v25, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-static {v0, v1, v13}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    const-string v25, "packageName"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 391
    const-string v25, "versionName"

    iget-object v0, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 392
    const-string v25, "versionCode"

    iget v0, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_d

    .line 395
    .end local v7    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "name":Ljava/lang/String;
    :goto_e
    if-eqz p4, :cond_a

    .line 396
    const/4 v8, 0x0

    .line 398
    .restart local v8    # "input":Ljava/io/InputStream;
    :try_start_a
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/proc/version"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 399
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :try_start_b
    const-string v25, "kernel"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 402
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 406
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    :goto_f
    :try_start_c
    const-string v25, "properties"

    const-string v26, "getprop"

    invoke-static/range {v26 .. v26}, Lcom/zp/mm/api/android/MMApi;->execShCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    .line 409
    :goto_10
    const/4 v8, 0x0

    .line 411
    :try_start_d
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/sys/class/android_usb/android0/iSerial"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 412
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :try_start_e
    const-string v25, "iSerial"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 415
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 418
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    :goto_11
    const/4 v8, 0x0

    .line 420
    :try_start_f
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/sys/class/android_usb/android0/idProduct"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 421
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :try_start_10
    const-string v25, "idProduct"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 424
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v8, v9

    .line 427
    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    :goto_12
    const/4 v8, 0x0

    .line 429
    :try_start_11
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v25, Ljava/io/File;

    const-string v26, "/sys/class/android_usb/android0/idVendor"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 430
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :try_start_12
    const-string v25, "idVendor"

    const-string v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-static {v9, v0}, Lcom/zp/mm/api/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 433
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 437
    .end local v9    # "input":Ljava/io/InputStream;
    :cond_a
    :goto_13
    return-object v17

    .line 385
    :cond_b
    :try_start_13
    sget-object v7, Lcom/zp/mm/api/android/MMApi;->packageInfoCache:Landroid/content/pm/PackageInfo;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    goto/16 :goto_d

    .line 400
    .restart local v8    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v25

    .line 402
    :goto_14
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_f

    :catchall_2
    move-exception v25

    :goto_15
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .line 413
    :catch_5
    move-exception v25

    .line 415
    :goto_16
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_11

    :catchall_3
    move-exception v25

    :goto_17
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .line 422
    :catch_6
    move-exception v25

    .line 424
    :goto_18
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_4
    move-exception v25

    :goto_19
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .line 431
    :catch_7
    move-exception v25

    .line 433
    :goto_1a
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_13

    :catchall_5
    move-exception v25

    :goto_1b
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v25

    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_6
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_1b

    .line 431
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_8
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_1a

    .line 424
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_7
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_19

    .line 422
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_9
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_18

    .line 415
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_8
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_17

    .line 413
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_a
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_16

    .line 407
    :catch_b
    move-exception v25

    goto/16 :goto_10

    .line 402
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_9
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_15

    .line 400
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_c
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto :goto_14

    .line 393
    .end local v8    # "input":Ljava/io/InputStream;
    :catch_d
    move-exception v25

    goto/16 :goto_e

    .line 328
    .end local v5    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v19    # "userAgent":Ljava/lang/String;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_a
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto/16 :goto_c

    .line 326
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_e
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto/16 :goto_b

    .line 320
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catchall_b
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto/16 :goto_a

    .line 318
    .end local v8    # "input":Ljava/io/InputStream;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_f
    move-exception v25

    move-object v8, v9

    .end local v9    # "input":Ljava/io/InputStream;
    .restart local v8    # "input":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 297
    .end local v8    # "input":Ljava/io/InputStream;
    :catch_10
    move-exception v25

    goto/16 :goto_5

    .line 291
    :catch_11
    move-exception v25

    goto/16 :goto_4
.end method

.method private static exeShCmd(ZLjava/lang/String;J)Ljava/lang/String;
    .locals 19
    .param p0, "isSuExec"    # Z
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 445
    const/4 v11, 0x0

    .line 446
    .local v11, "process":Ljava/lang/Process;
    const/4 v9, 0x0

    .line 447
    .local v9, "outStream":Ljava/io/DataOutputStream;
    const/4 v7, 0x0

    .line 449
    .local v7, "inputStream":Ljava/io/BufferedReader;
    :try_start_0
    const-string v2, ""

    .line 450
    .local v2, "bin":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 451
    const-string v2, "su"

    .line 456
    :goto_0
    new-instance v12, Ljava/lang/ProcessBuilder;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v2, v15, v16

    invoke-direct {v12, v15}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 457
    .local v12, "processBuilder":Ljava/lang/ProcessBuilder;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 458
    invoke-virtual {v12}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v11

    .line 460
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-direct {v10, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .local v10, "outStream":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 463
    .end local v7    # "inputStream":Ljava/io/BufferedReader;
    .local v8, "inputStream":Ljava/io/BufferedReader;
    :try_start_2
    const-string v15, "echo rg_cmd_start_magic\n"

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 464
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 466
    const-string v15, "echo rg_cmd_end_magic\n"

    invoke-virtual {v10, v15}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v10}, Ljava/io/DataOutputStream;->flush()V

    .line 469
    const/4 v6, 0x0

    .line 470
    .local v6, "execSucc":I
    const/4 v1, 0x0

    .line 471
    .local v1, "acquireSh":I
    const-string v14, ""

    .line 472
    .local v14, "strRet":Ljava/lang/String;
    const-string v13, ""

    .line 473
    .local v13, "strRead":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 476
    .local v3, "curTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v15

    add-long v17, v3, p2

    cmp-long v15, v15, v17

    if-ltz v15, :cond_5

    .line 521
    :goto_1
    invoke-static {v10}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 522
    invoke-static {v8}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 523
    if-eqz v11, :cond_1

    .line 524
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_1
    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v7    # "inputStream":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v1    # "acquireSh":I
    .end local v2    # "bin":Ljava/lang/String;
    .end local v3    # "curTime":J
    .end local v6    # "execSucc":I
    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .end local v12    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v13    # "strRead":Ljava/lang/String;
    .end local v14    # "strRet":Ljava/lang/String;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    :cond_2
    :goto_2
    return-object v14

    .line 453
    .restart local v2    # "bin":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v2, "sh"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 490
    .end local v7    # "inputStream":Ljava/io/BufferedReader;
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v1    # "acquireSh":I
    .restart local v3    # "curTime":J
    .restart local v6    # "execSucc":I
    .restart local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v12    # "processBuilder":Ljava/lang/ProcessBuilder;
    .restart local v13    # "strRead":Ljava/lang/String;
    .restart local v14    # "strRet":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_7

    .line 491
    const/4 v1, 0x1

    .line 492
    :try_start_4
    const-string v15, "rg_cmd_start_magic"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 481
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .line 482
    if-nez v13, :cond_6

    .line 511
    :goto_4
    const/4 v15, 0x1

    if-ne v6, v15, :cond_0

    goto :goto_1

    .line 486
    :cond_6
    if-nez v1, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    const-string v16, "permission denied"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 487
    const/4 v6, 0x1

    .line 488
    goto :goto_4

    .line 496
    :cond_7
    const-string v15, "rg_cmd_end_magic"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 497
    const/4 v6, 0x1

    .line 498
    goto :goto_4

    .line 500
    :cond_8
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ge v15, v0, :cond_9

    .line 501
    move-object v14, v13

    goto :goto_3

    .line 503
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 504
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v14

    .line 509
    goto :goto_3

    .line 518
    .end local v1    # "acquireSh":I
    .end local v2    # "bin":Ljava/lang/String;
    .end local v3    # "curTime":J
    .end local v6    # "execSucc":I
    .end local v8    # "inputStream":Ljava/io/BufferedReader;
    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .end local v12    # "processBuilder":Ljava/lang/ProcessBuilder;
    .end local v13    # "strRead":Ljava/lang/String;
    .end local v14    # "strRet":Ljava/lang/String;
    .restart local v7    # "inputStream":Ljava/io/BufferedReader;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v5

    .line 519
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "execCmd exception: "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", isSuExec: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", cmd: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 521
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 522
    invoke-static {v7}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 523
    if-eqz v11, :cond_2

    .line 524
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_2

    .line 521
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v15

    :goto_6
    invoke-static {v9}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 522
    invoke-static {v7}, Lcom/zp/mm/api/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 523
    if-eqz v11, :cond_a

    .line 524
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    :cond_a
    throw v15

    .line 521
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v2    # "bin":Ljava/lang/String;
    .restart local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v12    # "processBuilder":Ljava/lang/ProcessBuilder;
    :catchall_1
    move-exception v15

    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_6

    .end local v7    # "inputStream":Ljava/io/BufferedReader;
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v10    # "outStream":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v15

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v7    # "inputStream":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_6

    .line 518
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v10    # "outStream":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v5

    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_5

    .end local v7    # "inputStream":Ljava/io/BufferedReader;
    .end local v9    # "outStream":Ljava/io/DataOutputStream;
    .restart local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v10    # "outStream":Ljava/io/DataOutputStream;
    :catch_2
    move-exception v5

    move-object v7, v8

    .end local v8    # "inputStream":Ljava/io/BufferedReader;
    .restart local v7    # "inputStream":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "outStream":Ljava/io/DataOutputStream;
    .restart local v9    # "outStream":Ljava/io/DataOutputStream;
    goto :goto_5
.end method

.method private static execShCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 441
    const/4 v0, 0x0

    const-wide/16 v1, 0x7d0

    invoke-static {v0, p0, v1, v2}, Lcom/zp/mm/api/android/MMApi;->exeShCmd(ZLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultUserAgent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 549
    .local v2, "result":Ljava/lang/StringBuilder;
    const-string v4, "Dalvik/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v4, "java.vm.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v4, " (Linux; U; Android "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 554
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .end local v3    # "version":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v4, "REL"

    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 558
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 559
    .local v1, "model":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 560
    const-string v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .end local v1    # "model":Ljava/lang/String;
    :cond_0
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 565
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 566
    const-string v4, " Build/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 554
    .end local v0    # "id":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_2
    const-string v3, "1.0"

    goto :goto_0
.end method

.method private static getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 532
    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 535
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSerial()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 540
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serial_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "payCode"    # J
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "exData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 155
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v7}, Lcom/zp/mm/api/android/MMApi;->getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;

    move-result-object v0

    return-object v0
.end method

.method public static getSms(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSResponse;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "payCode"    # J
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "exData"    # Ljava/lang/String;
    .param p6, "imei"    # Ljava/lang/String;
    .param p7, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/zp/mm/api/MMApiException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 173
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    if-nez v12, :cond_0

    .line 174
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi must have android.permission.READ_PHONE_STATE permission. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    if-nez p6, :cond_1

    .line 178
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p6

    .line 180
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    .line 182
    :cond_2
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getDeviceId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_3
    if-nez p7, :cond_4

    .line 185
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object p7

    .line 187
    :cond_4
    if-eqz p7, :cond_5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    .line 189
    :cond_5
    new-instance v0, Lcom/zp/mm/api/MMApiException;

    const-string v1, "MMApi getSubscriberId failed. "

    invoke-direct {v0, v1}, Lcom/zp/mm/api/MMApiException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_6
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-interface/range {v0 .. v10}, Lcom/zp/mm/api/ServerConnector;->getSms(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/zp/mm/api/SMSCommand;

    move-result-object v11

    .line 193
    .local v11, "command":Lcom/zp/mm/api/SMSCommand;
    if-eqz v11, :cond_7

    .line 194
    invoke-interface {v11}, Lcom/zp/mm/api/SMSCommand;->executeCommand()V

    .line 196
    :cond_7
    return-object v11
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/zp/mm/api/android/MMApi;->isDebug:Z

    return v0
.end method

.method private static putQuietly(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 574
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public static setDebug(Ljava/lang/String;)V
    .locals 1
    .param p0, "gate"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zp/mm/api/android/MMApi;->isDebug:Z

    .line 69
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->destroy()V

    .line 73
    :cond_0
    new-instance v0, Lcom/zp/mm/api/impl/XmlServerConnector;

    invoke-direct {v0, p0}, Lcom/zp/mm/api/impl/XmlServerConnector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    .line 74
    sget-object v0, Lcom/zp/mm/api/android/MMApi;->connector:Lcom/zp/mm/api/ServerConnector;

    invoke-interface {v0}, Lcom/zp/mm/api/ServerConnector;->initialize()V

    .line 75
    return-void
.end method
