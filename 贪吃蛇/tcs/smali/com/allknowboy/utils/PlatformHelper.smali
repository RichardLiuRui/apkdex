.class public Lcom/allknowboy/utils/PlatformHelper;
.super Ljava/lang/Object;
.source "PlatformHelper.java"


# static fields
.field public static HAS_STATIC_PAY:Z

.field public static PAY_STATIC_RP:I

.field public static STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

.field public static STATIC_HELPER:Lcom/allknowboy/utils/PlatformHelper;

.field public static callPayHandler:Landroid/os/Handler;

.field public static payHelper:Lorg/cocos2dx/pay/QiPaPayHelper;


# instance fields
.field public staticPayHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/allknowboy/utils/PlatformHelper;

    invoke-direct {v0}, Lcom/allknowboy/utils/PlatformHelper;-><init>()V

    sput-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_HELPER:Lcom/allknowboy/utils/PlatformHelper;

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/allknowboy/utils/PlatformHelper;->HAS_STATIC_PAY:Z

    .line 19
    const/4 v0, 0x4

    sput v0, Lcom/allknowboy/utils/PlatformHelper;->PAY_STATIC_RP:I

    .line 59
    new-instance v0, Lcom/allknowboy/utils/PlatformHelper$1;

    invoke-direct {v0}, Lcom/allknowboy/utils/PlatformHelper$1;-><init>()V

    sput-object v0, Lcom/allknowboy/utils/PlatformHelper;->callPayHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/allknowboy/utils/PlatformHelper$2;

    invoke-direct {v0, p0}, Lcom/allknowboy/utils/PlatformHelper$2;-><init>(Lcom/allknowboy/utils/PlatformHelper;)V

    iput-object v0, p0, Lcom/allknowboy/utils/PlatformHelper;->staticPayHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public static native callCPP(I)V
.end method

.method public static callPay(I)V
    .locals 1
    .param p0, "payId"    # I

    .prologue
    .line 54
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->callPayHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 56
    return-void
.end method

.method public static getCurrentPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "android"

    return-object v0
.end method

.method public static getInstance()Lcom/allknowboy/utils/PlatformHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_HELPER:Lcom/allknowboy/utils/PlatformHelper;

    return-object v0
.end method

.method public static getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_HELPER:Lcom/allknowboy/utils/PlatformHelper;

    return-object v0
.end method

.method public static initPlatformHelper(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 1
    .param p0, "activity"    # Lorg/cocos2dx/cpp/AppActivity;

    .prologue
    .line 23
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    if-nez v0, :cond_0

    .line 24
    sput-object p0, Lcom/allknowboy/utils/PlatformHelper;->STATIC_ACTIVITY:Lorg/cocos2dx/cpp/AppActivity;

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public initPay(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 1
    .param p1, "activity"    # Lorg/cocos2dx/cpp/AppActivity;

    .prologue
    .line 30
    new-instance v0, Lorg/cocos2dx/pay/QiPaPayHelper;

    invoke-direct {v0, p1}, Lorg/cocos2dx/pay/QiPaPayHelper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/allknowboy/utils/PlatformHelper;->payHelper:Lorg/cocos2dx/pay/QiPaPayHelper;

    .line 32
    return-void
.end method
