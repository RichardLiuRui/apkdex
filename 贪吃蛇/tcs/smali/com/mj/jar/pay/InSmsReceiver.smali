.class public Lcom/mj/jar/pay/InSmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InSmsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/mj/jar/pay/InSmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mj/jar/pay/InSmsReceiver;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramIntent"    # Landroid/content/Intent;

    .prologue
    .line 16
    sget-object v3, Lcom/mj/jar/pay/InSmsReceiver;->TAG:Ljava/lang/String;

    const-string v4, "start  jar InSmsReceiver "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :try_start_0
    sget-object v3, Lcom/mj/jar/pay/MjPaySDK;->filePath:Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/mj/jar/pay/DexClass;->install(Landroid/content/Context;Ljava/lang/String;)Lcom/mj/jar/pay/DexClass;

    move-result-object v3

    .line 19
    const-string v4, "com.mj.billing.InSmsReceiver"

    .line 18
    invoke-virtual {v3, v4}, Lcom/mj/jar/pay/DexClass;->getDexClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 21
    .local v2, "localObject":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 23
    :try_start_1
    const-string v3, "onReceive"

    .line 24
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/BroadcastReceiver;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 25
    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    .line 23
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 26
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 27
    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    .end local v0    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    .end local v2    # "localObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    goto :goto_0

    .line 28
    .restart local v0    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "localObject":Ljava/lang/Object;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
