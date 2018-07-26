.class public Lcom/union/sdk/SnowFishPay;
.super Ljava/lang/Object;
.source "SnowFishPay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "SnowFish"


# instance fields
.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_payListener:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/SnowFishPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 68
    new-instance v0, Lcom/union/sdk/SnowFishPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/SnowFishPay$1;-><init>(Lcom/union/sdk/SnowFishPay;)V

    iput-object v0, p0, Lcom/union/sdk/SnowFishPay;->m_payListener:Landroid/os/Handler;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/SnowFishPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/union/sdk/SnowFishPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 27
    const-string v0, "ne37b1"

    const-string v1, "nc1dbc.dat"

    invoke-static {v0, v1}, Lcom/p/s/j/z/c/N;->setbd(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "EEABF85A"

    const-string v1, "FF7EB075"

    const-string v2, "8773"

    sget-object v3, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/p/s/j/z/c/N;->onCreate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayCallBackListener;

    .prologue
    .line 44
    iput-object p3, p0, Lcom/union/sdk/SnowFishPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 54
    const-string v0, "0"

    iget-object v1, p0, Lcom/union/sdk/SnowFishPay;->m_payListener:Landroid/os/Handler;

    invoke-static {p1, v0, v1}, Lcom/p/s/j/z/c/N;->cmd(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z

    .line 66
    return-void
.end method
