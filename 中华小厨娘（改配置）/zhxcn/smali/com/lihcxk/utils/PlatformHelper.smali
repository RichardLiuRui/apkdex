.class public Lcom/lihcxk/utils/PlatformHelper;
.super Ljava/lang/Object;
.source "PlatformHelper.java"


# static fields
.field public static HAS_STATIC_PAY:Z

.field public static PAY_STATIC_RP:I

.field public static STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

.field public static STATIC_HELPER:Lcom/lihcxk/utils/PlatformHelper;

.field public static akCallPayHandler:Landroid/os/Handler;

.field public static payHelper:Lorg/cocos2dx/pay/QiPaPayHelper;


# instance fields
.field public callPayHandler:Landroid/os/Handler;

.field public staticPayHandler:Landroid/os/Handler;

.field public vibratorHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/lihcxk/utils/PlatformHelper;

    invoke-direct {v0}, Lcom/lihcxk/utils/PlatformHelper;-><init>()V

    sput-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_HELPER:Lcom/lihcxk/utils/PlatformHelper;

    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lihcxk/utils/PlatformHelper;->HAS_STATIC_PAY:Z

    .line 20
    const/4 v0, 0x4

    sput v0, Lcom/lihcxk/utils/PlatformHelper;->PAY_STATIC_RP:I

    .line 105
    new-instance v0, Lcom/lihcxk/utils/PlatformHelper$4;

    invoke-direct {v0}, Lcom/lihcxk/utils/PlatformHelper$4;-><init>()V

    sput-object v0, Lcom/lihcxk/utils/PlatformHelper;->akCallPayHandler:Landroid/os/Handler;

    .line 112
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/lihcxk/utils/PlatformHelper$1;

    invoke-direct {v0, p0}, Lcom/lihcxk/utils/PlatformHelper$1;-><init>(Lcom/lihcxk/utils/PlatformHelper;)V

    iput-object v0, p0, Lcom/lihcxk/utils/PlatformHelper;->callPayHandler:Landroid/os/Handler;

    .line 79
    new-instance v0, Lcom/lihcxk/utils/PlatformHelper$2;

    invoke-direct {v0, p0}, Lcom/lihcxk/utils/PlatformHelper$2;-><init>(Lcom/lihcxk/utils/PlatformHelper;)V

    iput-object v0, p0, Lcom/lihcxk/utils/PlatformHelper;->staticPayHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/lihcxk/utils/PlatformHelper$3;

    invoke-direct {v0, p0}, Lcom/lihcxk/utils/PlatformHelper$3;-><init>(Lcom/lihcxk/utils/PlatformHelper;)V

    iput-object v0, p0, Lcom/lihcxk/utils/PlatformHelper;->vibratorHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public static akCallPay(I)V
    .locals 1
    .param p0, "payId"    # I

    .prologue
    .line 101
    sget-object v0, Lcom/lihcxk/utils/PlatformHelper;->akCallPayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 103
    return-void
.end method

.method public static native callCPP(I)V
.end method

.method public static getCurrentPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "android"

    return-object v0
.end method

.method public static getInstance()Lcom/lihcxk/utils/PlatformHelper;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_HELPER:Lcom/lihcxk/utils/PlatformHelper;

    return-object v0
.end method

.method public static getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_HELPER:Lcom/lihcxk/utils/PlatformHelper;

    return-object v0
.end method

.method public static initPlatformHelper(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 1
    .param p0, "activity"    # Lorg/cocos2dx/cpp/AppActivity;

    .prologue
    .line 25
    sget-object v0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    if-nez v0, :cond_0

    .line 27
    sput-object p0, Lcom/lihcxk/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public callPay(I)V
    .locals 1
    .param p1, "payId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lihcxk/utils/PlatformHelper;->callPayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 61
    return-void
.end method

.method public callVibrator(I)V
    .locals 1
    .param p1, "time"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lihcxk/utils/PlatformHelper;->vibratorHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method

.method public initPay(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/cocos2dx/cpp/AppActivity;

    .prologue
    .line 34
    new-instance v0, Lorg/cocos2dx/pay/QiPaPayHelper;

    invoke-direct {v0, p1}, Lorg/cocos2dx/pay/QiPaPayHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/lihcxk/utils/PlatformHelper;->payHelper:Lorg/cocos2dx/pay/QiPaPayHelper;

    .line 36
    return-void
.end method
