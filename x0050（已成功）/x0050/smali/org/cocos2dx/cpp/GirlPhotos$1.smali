.class Lorg/cocos2dx/cpp/GirlPhotos$1;
.super Landroid/os/Handler;
.source "GirlPhotos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/cpp/GirlPhotos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/GirlPhotos;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/GirlPhotos;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$1;->this$0:Lorg/cocos2dx/cpp/GirlPhotos;

    .line 175
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    .line 179
    .local v0, "id":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 180
    invoke-static {}, Lcom/union/sdk/UnionPay;->getInstance()Lcom/union/sdk/UnionPay;

    move-result-object v1

    # getter for: Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/cpp/GirlPhotos;->access$0()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/cocos2dx/cpp/GirlPhotos$1$1;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/GirlPhotos$1$1;-><init>(Lorg/cocos2dx/cpp/GirlPhotos$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/union/sdk/UnionPay;->payHidden(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V

    .line 203
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-static {}, Lcom/union/sdk/UnionPay;->getInstance()Lcom/union/sdk/UnionPay;

    move-result-object v1

    # getter for: Lorg/cocos2dx/cpp/GirlPhotos;->m_context:Landroid/content/Context;
    invoke-static {}, Lorg/cocos2dx/cpp/GirlPhotos;->access$0()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/cocos2dx/cpp/GirlPhotos$1$2;

    invoke-direct {v3, p0}, Lorg/cocos2dx/cpp/GirlPhotos$1$2;-><init>(Lorg/cocos2dx/cpp/GirlPhotos$1;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/union/sdk/UnionPay;->payUiClick(Landroid/content/Context;ILcom/union/sdk/UnionPay$PayListener;)V

    goto :goto_0
.end method
