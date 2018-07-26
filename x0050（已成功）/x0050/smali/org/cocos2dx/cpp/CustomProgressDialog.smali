.class public Lorg/cocos2dx/cpp/CustomProgressDialog;
.super Ljava/lang/Object;
.source "CustomProgressDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLoadingDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 18
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 19
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/high16 v4, 0x7f030000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 20
    .local v3, "v":Landroid/view/View;
    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 30
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/app/Dialog;

    const/high16 v4, 0x7f050000

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 32
    .local v2, "loadingDialog":Landroid/app/Dialog;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 33
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v2, v1, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    return-object v2
.end method
