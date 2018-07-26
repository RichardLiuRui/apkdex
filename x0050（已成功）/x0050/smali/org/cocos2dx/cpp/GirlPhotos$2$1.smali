.class Lorg/cocos2dx/cpp/GirlPhotos$2$1;
.super Ljava/lang/Object;
.source "GirlPhotos.java"

# interfaces
.implements Lcom/union/sdk/UnionPay$PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/GirlPhotos$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/cpp/GirlPhotos$2;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/GirlPhotos$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/GirlPhotos$2$1;->this$1:Lorg/cocos2dx/cpp/GirlPhotos$2;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(IILjava/lang/String;)V
    .locals 0
    .param p1, "payMent"    # I
    .param p2, "result"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 73
    return-void
.end method
