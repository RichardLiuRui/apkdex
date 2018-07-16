.class public Lcom/testin/agent/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.GET_TASKS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/testin/agent/a/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/testin/agent/a/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/a/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/testin/agent/a/e;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/a/e;->f(Landroid/content/Context;)V

    return-void
.end method

.method private a()Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/testin/agent/a/e;->a:[Ljava/lang/String;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lcom/testin/agent/a/e;->b:Landroid/content/Context;

    sget-object v4, Lcom/testin/agent/a/e;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lcom/testin/agent/d/f;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/testin/agent/a/e;->a:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is missing!!!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/testin/agent/base/b;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/testin/agent/c/f;

    invoke-direct {v0}, Lcom/testin/agent/c/f;-><init>()V

    invoke-static {p0}, Lcom/testin/agent/d/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/f;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/testin/agent/base/TestinGVariables;->a(Lcom/testin/agent/c/f;)V

    return-void
.end method

.method static synthetic b(Lcom/testin/agent/a/e;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/a/e;->e(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/testin/agent/a/e;)Z
    .locals 1

    invoke-direct {p0}, Lcom/testin/agent/a/e;->a()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/testin/agent/c/e;

    invoke-direct {v0}, Lcom/testin/agent/c/e;-><init>()V

    invoke-static {p0}, Lcom/testin/agent/d/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/testin/agent/d/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->b(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->h(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->e(Ljava/lang/String;)V

    const-string v1, "5.1"

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->f(Ljava/lang/String;)V

    const-string v1, "1.7.4"

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v1

    iget-object v1, v1, Lcom/testin/agent/base/TestinGVariables;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/testin/agent/c/e;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/testin/agent/base/TestinGVariables;->a(Lcom/testin/agent/c/e;)V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/testin/agent/a/g;->a(Landroid/content/Context;)Lcom/testin/agent/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/a/g;->a()V

    return-void
.end method

.method private f(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/testin/agent/d/f;->a(Ljava/lang/Long;)V

    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/base/TestinGVariables;->b()Lcom/testin/agent/c/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/testin/agent/a/e;->c(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/testin/agent/base/TestinGVariables;->c()Lcom/testin/agent/base/TestinGVariables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/base/TestinGVariables;->a()Lcom/testin/agent/c/f;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/testin/agent/a/e;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/testin/agent/a/e;->b:Landroid/content/Context;

    new-instance v0, Lcom/testin/agent/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/testin/agent/a/f;-><init>(Lcom/testin/agent/a/e;Lcom/testin/agent/a/f;)V

    invoke-virtual {v0}, Lcom/testin/agent/a/f;->start()V

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 6

    const-string v0, "register"

    iget-object v1, p0, Lcom/testin/agent/a/e;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/testin/agent/d/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/testin/agent/b/c;

    invoke-direct {v2, p1}, Lcom/testin/agent/b/c;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/testin/agent/a/e;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/testin/agent/d/d;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "TestinTestHandler"

    const-string v3, "Current network is disconnected or disabled"

    invoke-static {v0, v3}, Lcom/testin/agent/base/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v3, "/cpi/crash"

    invoke-static {v3}, Lcom/testin/agent/d/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-static {v3, v1, v0, v4}, Lcom/testin/agent/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z

    invoke-static {v0}, Lcom/testin/agent/a/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "en"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "to"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {p1, v0}, Lcom/testin/agent/d/e;->e(Landroid/content/Context;I)V

    const-string v0, "po"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/d/e;->a(Landroid/content/Context;I)V

    const-string v0, "rc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/d/e;->b(Landroid/content/Context;I)V

    const-string v0, "mc"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/d/e;->c(Landroid/content/Context;I)V

    const-string v0, "ep"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/testin/agent/d/e;->d(Landroid/content/Context;I)V

    const-string v0, "lv"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "tag"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/testin/agent/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Lcom/testin/agent/b/c;->a(Ljava/lang/String;)Z

    const-string v0, "TestinTestHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Regist Failled. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "ms"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/testin/agent/base/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
