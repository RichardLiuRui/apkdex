.class public Lcom/union/sdk/YuFengPay;
.super Ljava/lang/Object;
.source "YuFengPay.java"


# static fields
.field private static final SDKNAME:Ljava/lang/String; = "YuFeng"


# instance fields
.field m_BillListener:Lcom/y/t/jar/pay/BillingListener;

.field private m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field private m_yuFeng:Lcom/y/t/jar/pay/YFPaySDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/union/sdk/YuFengPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 19
    iput-object v0, p0, Lcom/union/sdk/YuFengPay;->m_yuFeng:Lcom/y/t/jar/pay/YFPaySDK;

    .line 34
    new-instance v0, Lcom/union/sdk/YuFengPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/YuFengPay$1;-><init>(Lcom/union/sdk/YuFengPay;)V

    iput-object v0, p0, Lcom/union/sdk/YuFengPay;->m_BillListener:Lcom/y/t/jar/pay/BillingListener;

    .line 15
    return-void
.end method

.method public static DateToString(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "string":Ljava/lang/String;
    return-object v1
.end method

.method static synthetic access$0(Lcom/union/sdk/YuFengPay;)Lcom/union/sdk/UnionPay$PayCallBackListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/union/sdk/YuFengPay;->m_listener:Lcom/union/sdk/UnionPay$PayCallBackListener;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public pay(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayCallBackListener;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
