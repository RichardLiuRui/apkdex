.class public Lorg/zzf/core/ZhangPaySdk;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lorg/zzf/core/ZhangPaySdk;

.field private static zhangPaySdk:Lorg/zzf/core/a;


# instance fields
.field public eCallBack:Lorg/zzf/core/ZhangPayCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/zzf/core/ZhangPaySdk;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/ZhangPaySdk;->addRequesNum()V

    return-void
.end method

.method private addRequesNum()V
    .locals 4

    const/4 v1, 0x0

    const-string v2, "http://112.74.111.56:9039/gamesit/puinit/data"

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    :goto_1
    :try_start_2
    const-string v0, "GET"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/16 v0, 0xfa0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/zzf/core/ZhangPaySdk;->readFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "url"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, " url \u9519\u8bef\uff01"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private enterLoadingActivity(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lorg/zzf/core/activity/ZhangPayActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    check-cast p2, Ljava/util/HashMap;

    const-string v1, "map"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/zzf/core/ZhangPaySdk;
    .locals 2

    const-class v1, Lorg/zzf/core/ZhangPaySdk;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    if-nez v0, :cond_0

    new-instance v0, Lorg/zzf/core/ZhangPaySdk;

    invoke-direct {v0}, Lorg/zzf/core/ZhangPaySdk;-><init>()V

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;

    :cond_0
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    sput-object v0, Lorg/zzf/core/ZhangPaySdk;->zhangPaySdk:Lorg/zzf/core/a;

    :cond_1
    sget-object v0, Lorg/zzf/core/ZhangPaySdk;->instance:Lorg/zzf/core/ZhangPaySdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;)V
    .locals 1

    iput-object p3, p0, Lorg/zzf/core/ZhangPaySdk;->eCallBack:Lorg/zzf/core/ZhangPayCallback;

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2, p3}, Lorg/zzf/core/a;->a(Landroid/content/Context;Ljava/util/HashMap;Lorg/zzf/core/ZhangPayCallback;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/zzf/core/m;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/zzf/core/m;-><init>(Lorg/zzf/core/ZhangPaySdk;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const/16 v0, 0x3e8

    return v0
.end method

.method public initLocation(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;Z)V
    .locals 0

    iput-object p3, p0, Lorg/zzf/core/ZhangPaySdk;->eCallBack:Lorg/zzf/core/ZhangPayCallback;

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/zzf/core/ZhangPaySdk;->enterLoadingActivity(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/zzf/core/ZhangPaySdk;->pay(Landroid/content/Context;Ljava/util/Map;Lorg/zzf/core/ZhangPayCallback;)V

    goto :goto_0
.end method

.method public readFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v0, ""

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0
.end method
