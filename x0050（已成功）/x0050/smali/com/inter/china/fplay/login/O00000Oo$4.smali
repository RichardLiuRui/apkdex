.class final Lcom/inter/china/fplay/login/O00000Oo$4;
.super Ljava/lang/Object;
.source "SMSEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inter/china/fplay/login/O00000Oo;->O000000o(Lcom/inter/china/fplay/login/PayCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/inter/china/fplay/login/PayCallBack;

.field final synthetic O00000Oo:I


# direct methods
.method constructor <init>(Lcom/inter/china/fplay/login/PayCallBack;I)V
    .locals 0

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/inter/china/fplay/login/O00000Oo$4;->O000000o:Lcom/inter/china/fplay/login/PayCallBack;

    iput p2, p0, Lcom/inter/china/fplay/login/O00000Oo$4;->O00000Oo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1037
    :try_start_0
    iget-object v0, p0, Lcom/inter/china/fplay/login/O00000Oo$4;->O000000o:Lcom/inter/china/fplay/login/PayCallBack;

    iget v1, p0, Lcom/inter/china/fplay/login/O00000Oo$4;->O00000Oo:I

    invoke-interface {v0, v1}, Lcom/inter/china/fplay/login/PayCallBack;->getResult(I)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    :goto_0
    return-void

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    const-class v1, Lcom/inter/china/fplay/login/O00000Oo;

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inter/china/fplay/O00000Oo/O000000o;->O00000o(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
