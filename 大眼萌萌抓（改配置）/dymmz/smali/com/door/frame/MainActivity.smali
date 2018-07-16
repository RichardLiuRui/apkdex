.class public Lcom/door/frame/MainActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    .line 53
    iput-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    .line 54
    iput-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    .line 56
    iput-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    .line 157
    new-instance v0, Lcom/door/frame/e;

    invoke-direct {v0, p0}, Lcom/door/frame/e;-><init>(Lcom/door/frame/MainActivity;)V

    iput-object v0, p0, Lcom/door/frame/MainActivity;->e:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/door/frame/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->setContentView(I)V

    .line 72
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    .line 73
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    .line 74
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    .line 75
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    .line 80
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/MainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/door/frame/DnPayServer;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 84
    iget-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/f;

    invoke-direct {v1, p0}, Lcom/door/frame/f;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/g;

    invoke-direct {v1, p0}, Lcom/door/frame/g;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/h;

    invoke-direct {v1, p0}, Lcom/door/frame/h;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    new-instance v0, Lcom/door/frame/i;

    invoke-direct {v0, p0}, Lcom/door/frame/i;-><init>(Lcom/door/frame/MainActivity;)V

    .line 136
    invoke-virtual {v0}, Lcom/door/frame/i;->start()V

    .line 155
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/DnPayServer;->exit()V

    .line 190
    return-void
.end method
