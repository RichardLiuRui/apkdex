.class Lorg/cocos2dx/cpp/AppActivity$2;
.super Landroid/os/Handler;
.source "AppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/cpp/AppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    .line 230
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 237
    invoke-static {}, Lcom/door/frame/DnPayServer;->getInstance()Lcom/door/frame/DnPayServer;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$2;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    sget-object v2, Lorg/cocos2dx/cpp/AppActivity;->priceNameList:[Ljava/lang/String;

    sget v3, Lorg/cocos2dx/cpp/AppActivity;->_payId:I

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/door/frame/DnPayServer;->startPayservice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
