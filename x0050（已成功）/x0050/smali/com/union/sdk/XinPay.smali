.class public Lcom/union/sdk/XinPay;
.super Ljava/lang/Object;
.source "XinPay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "XinPay"


# instance fields
.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_payListener:Lcom/zxhykj/xinzf/ZXResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/XinPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 34
    new-instance v0, Lcom/union/sdk/XinPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/XinPay$1;-><init>(Lcom/union/sdk/XinPay;)V

    iput-object v0, p0, Lcom/union/sdk/XinPay;->m_payListener:Lcom/zxhykj/xinzf/ZXResultListener;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/XinPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/union/sdk/XinPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 20
    const-string v0, "oae989oao8e"

    sget-object v1, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/zxhykj/xinzf/XinZF;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayCallBackListener;

    .prologue
    .line 24
    iput-object p3, p0, Lcom/union/sdk/XinPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 31
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const-string v0, "GAGGGFGYFGYG"

    iget-object v1, p0, Lcom/union/sdk/XinPay;->m_payListener:Lcom/zxhykj/xinzf/ZXResultListener;

    const-string v2, "sf2017"

    invoke-static {p1, v0, v1, v2}, Lcom/zxhykj/xinzf/XinZF;->startGo(Landroid/app/Activity;Ljava/lang/String;Lcom/zxhykj/xinzf/ZXResultListener;Ljava/lang/String;)V

    .line 32
    return-void
.end method
