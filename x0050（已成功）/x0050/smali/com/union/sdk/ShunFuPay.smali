.class public Lcom/union/sdk/ShunFuPay;
.super Ljava/lang/Object;
.source "ShunFuPay.java"


# static fields
.field public static final SDKNAME:Ljava/lang/String; = "ShunFu"

.field private static m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field private static m_itemId:I

.field private static m_payType:I

.field private static m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;


# instance fields
.field m_payListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

.field m_prePayListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    sput-object v1, Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    .line 15
    sput-object v1, Lcom/union/sdk/ShunFuPay;->m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 17
    sput v0, Lcom/union/sdk/ShunFuPay;->m_itemId:I

    .line 18
    sput v0, Lcom/union/sdk/ShunFuPay;->m_payType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/union/sdk/ShunFuPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/ShunFuPay$1;-><init>(Lcom/union/sdk/ShunFuPay;)V

    iput-object v0, p0, Lcom/union/sdk/ShunFuPay;->m_prePayListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    .line 48
    new-instance v0, Lcom/union/sdk/ShunFuPay$2;

    invoke-direct {v0, p0}, Lcom/union/sdk/ShunFuPay$2;-><init>(Lcom/union/sdk/ShunFuPay;)V

    iput-object v0, p0, Lcom/union/sdk/ShunFuPay;->m_payListener:Lcom/shunpay210/sdk/ShunPay210$PayListener;

    .line 11
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/union/sdk/ShunFuPay;->m_payType:I

    return v0
.end method

.method static synthetic access$1()Lcom/union/sdk/UnionPay$ChargeListener;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/union/sdk/ShunFuPay;->m_itemId:I

    return v0
.end method

.method static synthetic access$3()Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/union/sdk/ShunFuPay;->m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method

.method public static onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p0, "sdkName"    # Ljava/lang/String;
    .param p1, "payment"    # I
    .param p2, "result"    # I
    .param p3, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3}, Lcom/shunpay210/sdk/ShunPay210;->onThirdPayResult(Ljava/lang/String;IILjava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/shunpay210/sdk/ShunPay210;->onExit()V

    .line 69
    return-void
.end method

.method public pay(Landroid/content/Context;IILcom/union/sdk/UnionPay$ChargeListener;Lcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "payType"    # I
    .param p4, "thirdListener"    # Lcom/union/sdk/UnionPay$ChargeListener;
    .param p5, "backListener"    # Lcom/union/sdk/UnionPay$PayCallBackListener;

    .prologue
    .line 25
    sput-object p4, Lcom/union/sdk/ShunFuPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    .line 26
    sput-object p5, Lcom/union/sdk/ShunFuPay;->m_backListener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 27
    sput p2, Lcom/union/sdk/ShunFuPay;->m_itemId:I

    .line 28
    sput p3, Lcom/union/sdk/ShunFuPay;->m_payType:I

    const/16 v0, 0x64d8
    
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/union/sdk/ShunFuPay;->m_prePayListener:Lcom/shunpay210/sdk/ShunPay210$PayPrepareListener;

    invoke-static {p1, v0, v1, v2}, Lcom/shunpay210/sdk/ShunPay210;->prepare(Landroid/content/Context;IILcom/shunpay210/sdk/ShunPay210$PayPrepareListener;)V

    .line 35
    return-void
.end method
