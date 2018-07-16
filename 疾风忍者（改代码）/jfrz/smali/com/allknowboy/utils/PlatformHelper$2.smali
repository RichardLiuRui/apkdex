.class Lcom/allknowboy/utils/PlatformHelper$2;
.super Landroid/os/Handler;
.source "PlatformHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allknowboy/utils/PlatformHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allknowboy/utils/PlatformHelper;


# direct methods
.method constructor <init>(Lcom/allknowboy/utils/PlatformHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/allknowboy/utils/PlatformHelper$2;->this$0:Lcom/allknowboy/utils/PlatformHelper;

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    sget-object v0, Lcom/allknowboy/utils/PlatformHelper;->payHelper:Lorg/cocos2dx/pay/QiPaPayHelper;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/cocos2dx/pay/QiPaPayHelper;->pay(IZ)V

    .line 85
    return-void
.end method
