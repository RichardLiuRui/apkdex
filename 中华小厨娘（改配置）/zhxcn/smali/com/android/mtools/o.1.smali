.class final Lcom/android/mtools/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic au:Lcom/android/mtools/n;


# direct methods
.method constructor <init>(Lcom/android/mtools/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/o;->au:Lcom/android/mtools/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mtools/o;->au:Lcom/android/mtools/n;

    invoke-static {v0}, Lcom/android/mtools/n;->a(Lcom/android/mtools/n;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    sget-object v1, Lcom/android/mtools/n;->ae:Lcom/android/mtools/MPDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
