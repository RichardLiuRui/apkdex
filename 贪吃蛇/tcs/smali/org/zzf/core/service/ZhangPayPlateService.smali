.class public Lorg/zzf/core/service/ZhangPayPlateService;
.super Landroid/app/Service;


# static fields
.field private static u:Z


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

.field private c:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

.field private d:Landroid/content/Context;

.field private e:Lorg/zzf/core/c/u;

.field private f:Lorg/zzf/core/c/l;

.field private g:Lorg/zzf/core/c/g;

.field private h:Lorg/zzf/core/c/d;

.field private i:Lorg/zzf/core/c/x;

.field private j:Lorg/zzf/core/c/aa;

.field private k:Lorg/zzf/core/c/o;

.field private l:Ljava/util/List;

.field private m:Ljava/util/List;

.field private n:Ljava/util/List;

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Ljava/util/List;

.field private r:Ljava/util/List;

.field private s:Ljava/util/List;

.field private t:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/service/ZhangPayPlateService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Lorg/zzf/core/service/b;

    invoke-direct {v0, p0}, Lorg/zzf/core/service/b;-><init>(Lorg/zzf/core/service/ZhangPayPlateService;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lorg/zzf/core/service/ZhangPayPlateService;->u:Z

    invoke-static {}, Lorg/zzf/core/b/j;->a()Lorg/zzf/core/b/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/j;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->l:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/f;->a()Lorg/zzf/core/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->m:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/g;->a()Lorg/zzf/core/b/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/g;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->n:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/d;->a()Lorg/zzf/core/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->o:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/e;->a()Lorg/zzf/core/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/e;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->p:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/c;->a()Lorg/zzf/core/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/c;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->r:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/b;->a()Lorg/zzf/core/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->s:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/a;->a()Lorg/zzf/core/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->t:Ljava/util/List;

    invoke-static {}, Lorg/zzf/core/b/i;->a()Lorg/zzf/core/b/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/zzf/core/b/i;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->q:Ljava/util/List;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->g(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->j(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->i(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->e(Landroid/content/Context;)V

    :cond_3
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->f(Landroid/content/Context;)V

    :cond_4
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->c(Landroid/content/Context;)V

    :cond_5
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->d(Landroid/content/Context;)V

    :cond_6
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->b(Landroid/content/Context;)V

    :cond_7
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->h(Landroid/content/Context;)V

    :cond_8
    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    const-string v1, "CANCERFEE"

    invoke-virtual {v0, p1, v1}, Lorg/zzf/core/b/h;->P(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/zzf/core/d/x;

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lorg/zzf/core/service/ZhangPayPlateService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/zzf/core/service/ZhangPayPlateService;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->r:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/aa;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->j:Lorg/zzf/core/c/aa;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->j:Lorg/zzf/core/c/aa;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/aa;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->p:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/l;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->f:Lorg/zzf/core/c/l;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->f:Lorg/zzf/core/c/l;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/l;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->k:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/o;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->k:Lorg/zzf/core/c/o;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->k:Lorg/zzf/core/c/o;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/o;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->j:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/r;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/r;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/r;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private f(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->n:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/u;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->e:Lorg/zzf/core/c/u;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->e:Lorg/zzf/core/c/u;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->n:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/u;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private g(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->h:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/zzf/core/service/ZhangPayPlateService;->a(Ljava/util/List;)V

    new-instance v0, Lorg/zzf/core/zdx/b;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->l:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lorg/zzf/core/zdx/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->l:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/zzf/core/zdx/b;->a()V

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->t:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/g;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->g:Lorg/zzf/core/c/g;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->g:Lorg/zzf/core/c/g;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/g;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/x;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->i:Lorg/zzf/core/c/x;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->i:Lorg/zzf/core/c/x;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->t:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/x;->a(Ljava/util/List;)Z

    goto :goto_0
.end method

.method private j(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lorg/zzf/core/d/ab;->l:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/zzf/core/c/d;

    invoke-direct {v0, p1}, Lorg/zzf/core/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->h:Lorg/zzf/core/c/d;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->h:Lorg/zzf/core/c/d;

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/zzf/core/c/d;->a(Ljava/util/List;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->b:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->b:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    invoke-virtual {p0, v0}, Lorg/zzf/core/service/ZhangPayPlateService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->d:Landroid/content/Context;

    invoke-direct {p0}, Lorg/zzf/core/service/ZhangPayPlateService;->a()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "zhang.pay.zdx.send"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "zhang.pay.zdx.send.delivery"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    invoke-direct {v2, p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;-><init>(Lorg/zzf/core/service/ZhangPayPlateService;)V

    iput-object v2, p0, Lorg/zzf/core/service/ZhangPayPlateService;->b:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    new-instance v2, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    invoke-direct {v2, p0}, Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;-><init>(Lorg/zzf/core/service/ZhangPayPlateService;)V

    iput-object v2, p0, Lorg/zzf/core/service/ZhangPayPlateService;->c:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    iget-object v2, p0, Lorg/zzf/core/service/ZhangPayPlateService;->b:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    invoke-virtual {p0, v2, v0}, Lorg/zzf/core/service/ZhangPayPlateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lorg/zzf/core/service/ZhangPayPlateService;->c:Lorg/zzf/core/service/ZhangPayPlateService$MyServiceReceiver;

    invoke-virtual {p0, v0, v1}, Lorg/zzf/core/service/ZhangPayPlateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lorg/zzf/core/service/ZhangPayPlateService;->d:Landroid/content/Context;

    const-class v2, Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/zzf/core/service/ZhangPayPlateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v1, Lorg/zzf/core/service/ServiceRecevier;

    invoke-direct {v1}, Lorg/zzf/core/service/ServiceRecevier;-><init>()V

    invoke-virtual {p0, v1, v0}, Lorg/zzf/core/service/ZhangPayPlateService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, Lorg/zzf/core/service/ZhangPayPlateService;->u:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/zzf/core/service/a;

    invoke-direct {v1, p0}, Lorg/zzf/core/service/a;-><init>(Lorg/zzf/core/service/ZhangPayPlateService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1, v0, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
