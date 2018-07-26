.class public Lcom/union/sdk/FunPay;
.super Ljava/lang/Object;
.source "FunPay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "FunPay"


# instance fields
.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_payListener:Lcom/inter/china/fplay/login/PayCallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/FunPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 43
    new-instance v0, Lcom/union/sdk/FunPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/FunPay$1;-><init>(Lcom/union/sdk/FunPay;)V

    iput-object v0, p0, Lcom/union/sdk/FunPay;->m_payListener:Lcom/inter/china/fplay/login/PayCallBack;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/FunPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/union/sdk/FunPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method
