.class Lorg/cocos2dx/cpp/AppActivity$4;
.super Ljava/lang/Object;
.source "AppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/cpp/AppActivity;->showToast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/cpp/AppActivity;

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/cocos2dx/cpp/AppActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/cpp/AppActivity$4;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    iput-object p2, p0, Lorg/cocos2dx/cpp/AppActivity$4;->val$msg:Ljava/lang/String;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lorg/cocos2dx/cpp/AppActivity$4;->this$0:Lorg/cocos2dx/cpp/AppActivity;

    invoke-virtual {v0}, Lorg/cocos2dx/cpp/AppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/cpp/AppActivity$4;->val$msg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return-void
.end method
