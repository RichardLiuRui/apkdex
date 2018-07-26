.class public Lcom/union/sdk/JiePay;
.super Ljava/lang/Object;
.source "JiePay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "JiePay"


# instance fields
.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_payListener:Lcom/zy/hez/ZYResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 35
    new-instance v0, Lcom/union/sdk/JiePay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/JiePay$1;-><init>(Lcom/union/sdk/JiePay;)V

    iput-object v0, p0, Lcom/union/sdk/JiePay;->m_payListener:Lcom/zy/hez/ZYResultListener;

    .line 11
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/JiePay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-static {}, Lcom/zy/hez/ZhYuSDK;->getInstance()Lcom/zy/hez/ZhYuSDK;

    move-result-object v0

    const-string v1, "20924769"

    sget-object v2, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/zy/hez/ZhYuSDK;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayCallBackListener;

    .prologue
    .line 26
    iput-object p3, p0, Lcom/union/sdk/JiePay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 32
    invoke-static {}, Lcom/zy/hez/ZhYuSDK;->getInstance()Lcom/zy/hez/ZhYuSDK;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    const v1, 0x42e63a5

    iget-object v2, p0, Lcom/union/sdk/JiePay;->m_payListener:Lcom/zy/hez/ZYResultListener;

    invoke-virtual {v0, p1, v1, v2}, Lcom/zy/hez/ZhYuSDK;->pay(Landroid/app/Activity;ILcom/zy/hez/ZYResultListener;)V

    .line 33
    return-void
.end method
