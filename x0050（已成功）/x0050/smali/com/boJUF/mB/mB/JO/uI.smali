.class public final Lcom/boJUF/mB/mB/JO/uI;
.super Ljava/lang/Object;


# static fields
.field private static LA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/boJUF/mB/mB/JO/uI;->LA:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/boJUF/mB/mB/JO/uI;-><init>()V

    return-void
.end method

.method public static LA()Lcom/boJUF/mB/mB/JO/uI;
    .locals 1

    invoke-static {}, Lcom/boJUF/mB/mB/JO/ac;->LA()Lcom/boJUF/mB/mB/JO/uI;

    move-result-object v0

    return-object v0
.end method

.method static synthetic LA(Lcom/boJUF/mB/mB/JO/uI;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "flag"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Log"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Pay"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HeartBeat"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v3, v4, p2}, Lcom/boJUF/mB/mB/JO/uI;->LA([Ljava/lang/String;ILandroid/content/Context;)V

    const/4 v3, 0x2

    invoke-static {v0, v3, p2}, Lcom/boJUF/mB/mB/JO/uI;->LA([Ljava/lang/String;ILandroid/content/Context;)V

    const/4 v0, 0x3

    invoke-static {v2, v0, p2}, Lcom/boJUF/mB/mB/JO/uI;->LA([Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v0, 0x517

    invoke-static {v0, v1, p2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "flag"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static LA([Ljava/lang/String;ILandroid/content/Context;)V
    .locals 5

    array-length v2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    if-eqz v0, :cond_0

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v3, Lcom/boJUF/mB/mB/mB/oC;

    invoke-direct {v3}, Lcom/boJUF/mB/mB/mB/oC;-><init>()V

    invoke-virtual {v3, v0}, Lcom/boJUF/mB/mB/mB/oC;->LA(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/boJUF/mB/mB/mB/oC;->cp(I)V

    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/boJUF/mB/mB/mB/oC;->On(I)V

    invoke-static {p2}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/boJUF/mB/mB/Xd/uI;->LA(Lcom/boJUF/mB/mB/mB/oC;)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final LA(ILandroid/content/Context;)Ljava/lang/String;
    .locals 5

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, ""

    invoke-static {p2}, Lcom/boJUF/mB/mB/Xd/oC;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/Xd/uI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/boJUF/mB/mB/Xd/uI;->cp(I)Lcom/boJUF/mB/mB/mB/oC;

    move-result-object v2

    invoke-static {v2}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/boJUF/mB/mB/mB/oC;->cp()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lcom/boJUF/mB/mB/mB/uI;->LA(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->LA()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Nm9hcVdwSmtScER0YUlEWkF6WmFIUjBjRG92TDNCaGVYUmxjM1F4TG0xaGFXMXZZaTV1WlhRc2dCUWFUR3RsR3NpWmt2SWhF"

    :goto_1
    invoke-static {v0}, Lcom/boJUF/mB/mB/mB/uI;->na(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    sget v0, Lcom/boJUF/mB/mB/JO/uI;->LA:I

    const/4 v2, 0x5

    if-le v0, v2, :cond_6

    :cond_1
    :goto_2
    return-object v1

    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->LA()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NEhzdEJQRE9Rb3pBYmFIUjBjRG92THpFeE55NHhNelV1TVRRMExqWXpPamd3T0RFRlhNcGNGYXFEWmtv"

    goto :goto_1

    :cond_2
    const-string v0, "OGZVRUVkQUVsQWRRRGVqV3FRamhBYkh3RWFIUjBjRG92THpFeE55NHhNelV1TVRRMExqWXpPamd3T0RFcXNxSWl0bXZjT3NVVGNiQ1R5YnlGSlF4"

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->LA()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "N01tZkpNc1pGT1ZjSGNxeWdpZnhlVGFIUjBjRG92TDNCaGVYUmxjM1F4TG0xaGFXMXZZaTV1WlhRV0ZmRm9wd2hJdW9jdk5zRG9YVFZI"

    goto :goto_1

    :cond_3
    const-string v0, "OG16dWRBcXFISG5CUkJ1bmJPdGNkWERFQmFIUjBjRG92TDNBeExtbHNZWE4wTG1Oamd5YURKVlFqdUtpS1dQTXFEUHVIT0ZvcQ"

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/boJUF/mB/mB/VD/oC;->LA()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "NVBHWGxJVUhCY2haSUpZU2FIUjBjRG92TDJ4dlozUmxjM1F4TG0xaGFXMXZZaTV1WlhRRklucGFlRWNFampaa1JP"

    goto :goto_1

    :cond_4
    const-string v0, "NXdGcU1pT1lkZExWTHlqcGFIUjBjRG92TDJ4dlp6RXVhV3hoYzNRdVkyTWhRR3BRaEdPcUNtZU9rWg"

    goto :goto_1

    :cond_5
    const-string v0, "OWJ3Y1FNcnVmUnpWVGl0V0t1WFNTeEx6bnJsQmFIUjBjRG92TDNBeExtbHNZWE4wTG1OakRlaEFCUHdkSVFDV2xjUExsSndhd0ZZQlBjVg"

    goto :goto_1

    :cond_6
    sget v0, Lcom/boJUF/mB/mB/JO/uI;->LA:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/boJUF/mB/mB/JO/uI;->LA:I

    :cond_7
    const/16 v0, 0x516

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v2, p2}, Lcom/boJUF/mB/mB/pO/tP/tQ;->LA(ILjava/util/HashMap;Landroid/content/Context;)Z

    invoke-static {p2}, Lcom/boJUF/mB/mB/pO/tP/ac;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/pO/mB/uI;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "imsi"

    invoke-static {p2}, Lcom/boJUF/mB/mB/mB/uI;->oC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "imei"

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/boJUF/mB/mB/JO/oC;

    invoke-direct {v4, p0, v3, v2, p2}, Lcom/boJUF/mB/mB/JO/oC;-><init>(Lcom/boJUF/mB/mB/JO/uI;Ljava/util/Map;Lcom/boJUF/mB/mB/pO/mB/uI;Landroid/content/Context;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
