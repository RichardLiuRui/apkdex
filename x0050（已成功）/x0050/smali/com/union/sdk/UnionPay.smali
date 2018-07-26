.class public Lcom/union/sdk/UnionPay;
.super Ljava/lang/Object;
.source "UnionPay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/union/sdk/UnionPay$ChargeListener;,
        Lcom/union/sdk/UnionPay$PayCallBackListener;,
        Lcom/union/sdk/UnionPay$PayListener;
    }
.end annotation


# static fields
.field public static final APPID:I = 0x3ec

.field public static CHANNEL:Ljava/lang/String; = null

.field public static final PAY_RESULT_CANCELED:I = 0x3

.field public static final PAY_RESULT_FAILED:I = 0x2

.field public static final PAY_RESULT_SUCCESS:I = 0x1

.field public static final SELF_FIRST:I = 0x0

.field public static SUB_CHANNEL:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ShunPay"

.field public static final TOGETHER:I = 0x1

.field public static VERSION:Ljava/lang/String;

.field private static m_context:Landroid/content/Context;

.field private static m_instance:Lcom/union/sdk/UnionPay;

.field private static m_proDialog:Landroid/app/Dialog;


# instance fields
.field private m_callBackOnce:Z

.field private m_dmPay:Lcom/union/sdk/DaMaiPay;

.field private m_funPay:Lcom/union/sdk/FunPay;

.field m_handler:Landroid/os/Handler;

.field private m_isInit:Z

.field private m_jPay:Lcom/union/sdk/JiePay;

.field private m_listener:Lcom/union/sdk/UnionPay$PayListener;

.field m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

.field m_runnAble:Ljava/lang/Runnable;

.field private m_sfPay:Lcom/union/sdk/ShunFuPay;

.field private m_snowfPay:Lcom/union/sdk/SnowFishPay;

.field m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

.field private m_xPay:Lcom/union/sdk/XinPay;

.field private m_yPay:Lcom/union/sdk/YuePay;

.field private m_yfPay:Lcom/union/sdk/YuFengPay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    const-string v0, "girl0001"

    sput-object v0, Lcom/union/sdk/UnionPay;->CHANNEL:Ljava/lang/String;

    .line 27
    const-string v0, "sf001"

    sput-object v0, Lcom/union/sdk/UnionPay;->SUB_CHANNEL:Ljava/lang/String;

    .line 28
    const-string v0, "v7.2"

    sput-object v0, Lcom/union/sdk/UnionPay;->VERSION:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    .line 35
    sput-object v1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    .line 36
    sput-object v1, Lcom/union/sdk/UnionPay;->m_instance:Lcom/union/sdk/UnionPay;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    .line 31
    iput-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_isInit:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;

    .line 46
    new-instance v0, Lcom/union/sdk/ShunFuPay;

    invoke-direct {v0}, Lcom/union/sdk/ShunFuPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;

    .line 47
    new-instance v0, Lcom/union/sdk/FunPay;

    invoke-direct {v0}, Lcom/union/sdk/FunPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_funPay:Lcom/union/sdk/FunPay;

    .line 48
    new-instance v0, Lcom/union/sdk/SnowFishPay;

    invoke-direct {v0}, Lcom/union/sdk/SnowFishPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_snowfPay:Lcom/union/sdk/SnowFishPay;

    .line 49
    new-instance v0, Lcom/union/sdk/XinPay;

    invoke-direct {v0}, Lcom/union/sdk/XinPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_xPay:Lcom/union/sdk/XinPay;

    .line 50
    new-instance v0, Lcom/union/sdk/JiePay;

    invoke-direct {v0}, Lcom/union/sdk/JiePay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_jPay:Lcom/union/sdk/JiePay;

    .line 51
    new-instance v0, Lcom/union/sdk/YuFengPay;

    invoke-direct {v0}, Lcom/union/sdk/YuFengPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_yfPay:Lcom/union/sdk/YuFengPay;

    .line 52
    new-instance v0, Lcom/union/sdk/YuePay;

    invoke-direct {v0}, Lcom/union/sdk/YuePay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_yPay:Lcom/union/sdk/YuePay;

    .line 53
    new-instance v0, Lcom/union/sdk/DaMaiPay;

    invoke-direct {v0}, Lcom/union/sdk/DaMaiPay;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_dmPay:Lcom/union/sdk/DaMaiPay;

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_handler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/union/sdk/UnionPay$1;

    invoke-direct {v0, p0}, Lcom/union/sdk/UnionPay$1;-><init>(Lcom/union/sdk/UnionPay;)V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_runnAble:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Lcom/union/sdk/UnionPay$2;

    invoke-direct {v0, p0}, Lcom/union/sdk/UnionPay$2;-><init>(Lcom/union/sdk/UnionPay;)V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    .line 167
    new-instance v0, Lcom/union/sdk/UnionPay$3;

    invoke-direct {v0, p0}, Lcom/union/sdk/UnionPay$3;-><init>(Lcom/union/sdk/UnionPay;)V

    iput-object v0, p0, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    .line 10
    return-void
.end method

.method static synthetic access$0(Lcom/union/sdk/UnionPay;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    return v0
.end method

.method static synthetic access$1(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/ShunFuPay;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;

    return-object v0
.end method

.method static synthetic access$10(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/DaMaiPay;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_dmPay:Lcom/union/sdk/DaMaiPay;

    return-object v0
.end method

.method static synthetic access$11(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/UnionPay$PayListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/union/sdk/UnionPay;Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    return-void
.end method

.method static synthetic access$13(Lcom/union/sdk/UnionPay;)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/union/sdk/UnionPay;->hideProcessDialog()V

    return-void
.end method

.method static synthetic access$2()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/union/sdk/UnionPay;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_isInit:Z

    return v0
.end method

.method static synthetic access$4(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/FunPay;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_funPay:Lcom/union/sdk/FunPay;

    return-object v0
.end method

.method static synthetic access$5(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/SnowFishPay;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_snowfPay:Lcom/union/sdk/SnowFishPay;

    return-object v0
.end method

.method static synthetic access$6(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/XinPay;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_xPay:Lcom/union/sdk/XinPay;

    return-object v0
.end method

.method static synthetic access$7(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/JiePay;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_jPay:Lcom/union/sdk/JiePay;

    return-object v0
.end method

.method static synthetic access$8(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/YuFengPay;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yfPay:Lcom/union/sdk/YuFengPay;

    return-object v0
.end method

.method static synthetic access$9(Lcom/union/sdk/UnionPay;)Lcom/union/sdk/YuePay;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yPay:Lcom/union/sdk/YuePay;

    return-object v0
.end method

.method public static getInstance()Lcom/union/sdk/UnionPay;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/union/sdk/UnionPay;->m_instance:Lcom/union/sdk/UnionPay;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/union/sdk/UnionPay;

    invoke-direct {v0}, Lcom/union/sdk/UnionPay;-><init>()V

    sput-object v0, Lcom/union/sdk/UnionPay;->m_instance:Lcom/union/sdk/UnionPay;

    .line 69
    :cond_0
    sget-object v0, Lcom/union/sdk/UnionPay;->m_instance:Lcom/union/sdk/UnionPay;

    return-object v0
.end method

.method private hideProcessDialog()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 193
    :cond_0
    return-void
.end method

.method private showProgressDialog(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    sget-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 185
    sget-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;

    invoke-virtual {v0}, Lcom/union/sdk/ShunFuPay;->onExit()V

    .line 197
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_funPay:Lcom/union/sdk/FunPay;

    invoke-virtual {v0}, Lcom/union/sdk/FunPay;->onExit()V

    .line 198
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_snowfPay:Lcom/union/sdk/SnowFishPay;

    invoke-virtual {v0}, Lcom/union/sdk/SnowFishPay;->onExit()V

    .line 199
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_xPay:Lcom/union/sdk/XinPay;

    invoke-virtual {v0}, Lcom/union/sdk/XinPay;->onExit()V

    .line 200
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_jPay:Lcom/union/sdk/JiePay;

    invoke-virtual {v0}, Lcom/union/sdk/JiePay;->onExit()V

    .line 201
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yfPay:Lcom/union/sdk/YuFengPay;

    invoke-virtual {v0}, Lcom/union/sdk/YuFengPay;->onExit()V

    .line 202
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yPay:Lcom/union/sdk/YuePay;

    invoke-virtual {v0}, Lcom/union/sdk/YuePay;->onExit()V

    .line 203
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_dmPay:Lcom/union/sdk/DaMaiPay;

    invoke-virtual {v0}, Lcom/union/sdk/DaMaiPay;->onExit()V

    .line 212
    return-void
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/ShunFuPay;->init(Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_funPay:Lcom/union/sdk/FunPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/FunPay;->init(Landroid/app/Activity;)V

    .line 76
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_snowfPay:Lcom/union/sdk/SnowFishPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/SnowFishPay;->init(Landroid/app/Activity;)V

    .line 77
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_xPay:Lcom/union/sdk/XinPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/XinPay;->init(Landroid/app/Activity;)V

    .line 78
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_jPay:Lcom/union/sdk/JiePay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/JiePay;->init(Landroid/app/Activity;)V

    .line 79
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yfPay:Lcom/union/sdk/YuFengPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/YuFengPay;->init(Landroid/app/Activity;)V

    .line 80
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_yPay:Lcom/union/sdk/YuePay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/YuePay;->init(Landroid/app/Activity;)V

    .line 81
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_dmPay:Lcom/union/sdk/DaMaiPay;

    invoke-virtual {v0, p1}, Lcom/union/sdk/DaMaiPay;->init(Landroid/app/Activity;)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_isInit:Z

    .line 92
    sput-object p1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    .line 93
    sget-object v0, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1}, Lorg/cocos2dx/cpp/CustomProgressDialog;->createLoadingDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/union/sdk/UnionPay;->m_proDialog:Landroid/app/Dialog;

    .line 94
    return-void
.end method

.method public payHidden(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayListener;

    .prologue
    const/4 v3, 0x0

    .line 98
    iput-object p3, p0, Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;

    .line 99
    sput-object p1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    .line 100
    iput-boolean v3, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    .line 102
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_sfPay:Lcom/union/sdk/ShunFuPay;

    sget-object v1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    iget-object v4, p0, Lcom/union/sdk/UnionPay;->m_thirdListener:Lcom/union/sdk/UnionPay$ChargeListener;

    iget-object v5, p0, Lcom/union/sdk/UnionPay;->m_payCallBack:Lcom/union/sdk/UnionPay$PayCallBackListener;

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/union/sdk/ShunFuPay;->pay(Landroid/content/Context;IILcom/union/sdk/UnionPay$ChargeListener;Lcom/union/sdk/UnionPay$PayCallBackListener;)V

    .line 104
    return-void
.end method

.method public payLoginBack(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayListener;

    .prologue
    .line 108
    iput-object p3, p0, Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;

    .line 109
    sput-object p1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    .line 112
    invoke-direct {p0, p1}, Lcom/union/sdk/UnionPay;->showProgressDialog(Landroid/content/Context;)V

    .line 114
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/union/sdk/UnionPay;->m_runnAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method

.method public payUiClick(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemId"    # I
    .param p3, "listener"    # Lcom/union/sdk/UnionPay$PayListener;

    .prologue
    .line 120
    iput-object p3, p0, Lcom/union/sdk/UnionPay;->m_listener:Lcom/union/sdk/UnionPay$PayListener;

    .line 121
    sput-object p1, Lcom/union/sdk/UnionPay;->m_context:Landroid/content/Context;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/union/sdk/UnionPay;->m_callBackOnce:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/union/sdk/UnionPay;->showProgressDialog(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/union/sdk/UnionPay;->m_handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/union/sdk/UnionPay;->m_runnAble:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method
