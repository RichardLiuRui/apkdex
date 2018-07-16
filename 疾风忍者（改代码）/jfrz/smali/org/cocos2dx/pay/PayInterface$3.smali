.class Lorg/cocos2dx/pay/PayInterface$3;
.super Ljava/util/TimerTask;
.source "PayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/pay/PayInterface;->dotimeOut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/pay/PayInterface;


# direct methods
.method constructor <init>(Lorg/cocos2dx/pay/PayInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/pay/PayInterface$3;->this$0:Lorg/cocos2dx/pay/PayInterface;

    .line 492
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lorg/cocos2dx/pay/PayInterface$3;->this$0:Lorg/cocos2dx/pay/PayInterface;

    # invokes: Lorg/cocos2dx/pay/PayInterface;->onNext()V
    invoke-static {v0}, Lorg/cocos2dx/pay/PayInterface;->access$3(Lorg/cocos2dx/pay/PayInterface;)V

    .line 497
    return-void
.end method
