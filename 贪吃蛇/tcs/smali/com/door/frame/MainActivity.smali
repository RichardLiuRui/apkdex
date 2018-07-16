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

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    .line 79
    iput-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    .line 80
    iput-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    .line 82
    iput-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    .line 185
    new-instance v0, Lcom/door/frame/b;

    invoke-direct {v0, p0}, Lcom/door/frame/b;-><init>(Lcom/door/frame/MainActivity;)V

    iput-object v0, p0, Lcom/door/frame/MainActivity;->e:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/door/frame/MainActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->setContentView(I)V

    .line 98
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    .line 99
    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    .line 100
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    .line 101
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/door/frame/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/door/frame/MainActivity;->d:Landroid/widget/EditText;

    .line 105
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    const v1, 0x186a6

    const/16 v2, 0x3e8

    const-string v3, "C0007"

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/DnPayServer;->setParams(IILjava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lcom/door/frame/MainActivity;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Lcom/door/frame/DnPayServer;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 128
    iget-object v0, p0, Lcom/door/frame/MainActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/c;

    invoke-direct {v1, p0}, Lcom/door/frame/c;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/door/frame/MainActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/d;

    invoke-direct {v1, p0}, Lcom/door/frame/d;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/door/frame/MainActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/door/frame/e;

    invoke-direct {v1, p0}, Lcom/door/frame/e;-><init>(Lcom/door/frame/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 217
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/door/frame/DnPayServer;->exit()V

    .line 218
    return-void
.end method
