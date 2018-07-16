.class public Lorg/zzf/core/activity/ZhangPayActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field private b:Landroid/widget/FrameLayout;

.field private c:Lorg/zzf/core/ui/FeeView;

.field private d:Z

.field private e:Landroid/os/Handler;

.field private f:Lorg/zzf/core/ui/LoadingView;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->d:Z

    new-instance v0, Lorg/zzf/core/activity/a;

    invoke-direct {v0, p0}, Lorg/zzf/core/activity/a;-><init>(Lorg/zzf/core/activity/ZhangPayActivity;)V

    iput-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->e:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "map"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/zzf/core/activity/b;

    invoke-direct {v2, p0, v0}, Lorg/zzf/core/activity/b;-><init>(Lorg/zzf/core/activity/ZhangPayActivity;Ljava/util/HashMap;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "zhangPay_log"

    const-string v1, "map is null? or map is not HashMap?"

    invoke-static {v0, v1}, Lorg/zzf/core/f/q;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->e()V

    return-void
.end method

.method static synthetic a(Lorg/zzf/core/activity/ZhangPayActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->d:Z

    return p1
.end method

.method static synthetic b(Lorg/zzf/core/activity/ZhangPayActivity;)Lorg/zzf/core/ui/LoadingView;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->f:Lorg/zzf/core/ui/LoadingView;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Lorg/zzf/core/ui/LoadingView;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/zzf/core/ui/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->f:Lorg/zzf/core/ui/LoadingView;

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->f:Lorg/zzf/core/ui/LoadingView;

    const-string v1, "    \u6b63\u5728\u8fdb\u884c\u6570\u636e\u5904\u7406\uff0c\u8bf7\u60a8\u8010\n   \u5fc3\u7b49\u5019..."

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/LoadingView;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->f:Lorg/zzf/core/ui/LoadingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/zzf/core/f/m;->d(Landroid/content/Context;)V

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->d()V

    return-void
.end method

.method static synthetic c(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->c()V

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    invoke-virtual {v0}, Lorg/zzf/core/ui/FeeView;->a()V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/FeeView;->setVisibility(I)V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method static synthetic d(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->b()V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Lorg/zzf/core/ui/FeeView;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/zzf/core/ui/FeeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/FeeView;->setVisibility(I)V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    new-instance v1, Lorg/zzf/core/activity/c;

    invoke-direct {v1, p0}, Lorg/zzf/core/activity/c;-><init>(Lorg/zzf/core/activity/ZhangPayActivity;)V

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/FeeView;->a(Lorg/zzf/core/ui/a;)V

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->c:Lorg/zzf/core/ui/FeeView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->g()V

    return-void
.end method

.method static synthetic f(Lorg/zzf/core/activity/ZhangPayActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const-class v2, Lorg/zzf/core/service/ZhangPayPlateService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->d:Z

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(Landroid/content/Context;)V

    iget v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->g:I

    const/16 v1, 0x457

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v0, Lorg/zzf/core/ui/LoadingView;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/zzf/core/ui/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v1, "    \u5df2\u7ecf\u5f00\u59cb\u8ba1\u8d39\uff0c\u8bf7\u60a8\u8010\u5fc3\n    \u7b49\u5019..."

    invoke-virtual {v0, v1}, Lorg/zzf/core/ui/LoadingView;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const-string v2, "CANCERFEE"

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->P(Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/zzf/core/b/h;->a()Lorg/zzf/core/b/h;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    const/16 v2, 0x3ea

    invoke-virtual {v0, v1, v2}, Lorg/zzf/core/b/h;->e(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->finish()V

    return-void
.end method

.method static synthetic g(Lorg/zzf/core/activity/ZhangPayActivity;)V
    .locals 0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->f()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/zzf/core/activity/ZhangPayActivity;->requestWindowFeature(I)Z

    iput-object p0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lorg/zzf/core/activity/ZhangPayActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enterType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->g:I

    iget v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->g:I

    const/16 v1, 0x457

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->e()V

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->c()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->b()V

    invoke-direct {p0}, Lorg/zzf/core/activity/ZhangPayActivity;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lorg/zzf/core/activity/ZhangPayActivity;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/zzf/core/a;->a()Lorg/zzf/core/a;

    move-result-object v0

    iget-object v1, p0, Lorg/zzf/core/activity/ZhangPayActivity;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lorg/zzf/core/a;->a(Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
