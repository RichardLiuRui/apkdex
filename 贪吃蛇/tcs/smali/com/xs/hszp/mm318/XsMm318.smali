.class public Lcom/xs/hszp/mm318/XsMm318;
.super Ljava/lang/Object;


# static fields
.field public static final CODE_FAIL:I = -0x1

.field public static final CODE_OK:I = 0x0

.field public static final CODE_TIME_OUT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xs/hszp/mm318/XsMm318;->payStart(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V

    return-void
.end method

.method static synthetic access$1(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xs/hszp/mm318/XsMm318;->callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xs/hszp/mm318/XsMm318;->payStart(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V

    return-void
.end method

.method private static callXsMm318Listener(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/g;

    invoke-direct {v0, p0, p1}, Lcom/xs/hszp/mm318/g;-><init>(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V

    invoke-static {v0}, Lcom/xs/hszp/mm318/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xs/hszp/mm318/XsMm318;->init(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/xs/hszp/mm318/b/a;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/xs/hszp/mm318/a;

    invoke-direct {v0, p0, p1}, Lcom/xs/hszp/mm318/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xs/hszp/mm318/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/xs/hszp/mm318/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V

    invoke-static {v0}, Lcom/xs/hszp/mm318/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/xs/hszp/mm318/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V

    invoke-static {v0}, Lcom/xs/hszp/mm318/b/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static payStart(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/f;

    invoke-direct {v0, p2}, Lcom/xs/hszp/mm318/f;-><init>(Lcom/xs/hszp/mm318/IOnReadySendSmsListener;)V

    invoke-static {p0, p1, v0}, Lcom/xs/hszp/mm318/XsMm318Pay;->mmSms(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;)V

    return-void
.end method

.method private static payStart(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V
    .locals 1

    new-instance v0, Lcom/xs/hszp/mm318/c;

    invoke-direct {v0, p0, p2}, Lcom/xs/hszp/mm318/c;-><init>(Landroid/content/Context;Lcom/xs/hszp/mm318/IOnXsMm318Listener;)V

    invoke-static {p0, p1, v0}, Lcom/xs/hszp/mm318/XsMm318Pay;->mmSms(Landroid/content/Context;Ljava/lang/String;Lcom/xs/hszp/mm318/XsMm318Pay$IOnXsMm318PayListener;)V

    return-void
.end method

.method public static sendPayLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xs/hszp/mm318/a/a/f;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
