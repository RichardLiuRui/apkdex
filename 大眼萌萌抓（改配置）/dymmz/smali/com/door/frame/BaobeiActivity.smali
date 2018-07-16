.class public Lcom/door/frame/BaobeiActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->b:Landroid/widget/Button;

    .line 21
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->c:Landroid/widget/Button;

    .line 22
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->d:Landroid/widget/Button;

    .line 23
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->e:Landroid/widget/EditText;

    .line 24
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->f:Landroid/widget/EditText;

    .line 25
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->g:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->h:Ljava/lang/String;

    .line 18
    return-void
.end method

.method static synthetic a(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/door/frame/BaobeiActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/door/frame/BaobeiActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    const-string v2, "com.door.pay.sdk.impl.DnPayServer"

    invoke-virtual {v0, v1, v2}, Lcom/door/frame/DnPayServer;->loadClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 89
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 91
    const-string v2, "baobeiSPCode"

    .line 92
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 91
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 94
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/door/frame/BaobeiActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/door/frame/BaobeiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/door/frame/BaobeiActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/door/frame/BaobeiActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/door/frame/utils/c;->a(Landroid/content/Context;)Lcom/door/frame/utils/c;

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->a:Landroid/content/Context;

    .line 36
    const-string v2, "mydialog"

    invoke-virtual {v1, v2}, Lcom/door/frame/utils/c;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 35
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    invoke-virtual {p0, v2}, Lcom/door/frame/BaobeiActivity;->setContentView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/door/frame/BaobeiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "paycode"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->g:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/door/frame/BaobeiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extdata"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->h:Ljava/lang/String;

    .line 41
    const-string v0, "ok"

    invoke-virtual {v1, v0}, Lcom/door/frame/utils/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->b:Landroid/widget/Button;

    .line 42
    const-string v0, "cancel"

    invoke-virtual {v1, v0}, Lcom/door/frame/utils/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->d:Landroid/widget/Button;

    .line 43
    const-string v0, "get"

    invoke-virtual {v1, v0}, Lcom/door/frame/utils/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->c:Landroid/widget/Button;

    .line 44
    const-string v0, "editText1"

    invoke-virtual {v1, v0}, Lcom/door/frame/utils/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->e:Landroid/widget/EditText;

    .line 45
    const-string v0, "editText2"

    invoke-virtual {v1, v0}, Lcom/door/frame/utils/c;->c(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/door/frame/BaobeiActivity;->f:Landroid/widget/EditText;

    .line 46
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->c:Landroid/widget/Button;

    new-instance v2, Lcom/door/frame/a;

    invoke-direct {v2, p0, v1}, Lcom/door/frame/a;-><init>(Lcom/door/frame/BaobeiActivity;Lcom/door/frame/utils/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->b:Landroid/widget/Button;

    new-instance v2, Lcom/door/frame/b;

    invoke-direct {v2, p0, v1}, Lcom/door/frame/b;-><init>(Lcom/door/frame/BaobeiActivity;Lcom/door/frame/utils/c;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/door/frame/BaobeiActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/c;

    invoke-direct {v1, p0}, Lcom/door/frame/c;-><init>(Lcom/door/frame/BaobeiActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method
