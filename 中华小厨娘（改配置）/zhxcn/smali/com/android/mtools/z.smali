.class final Lcom/android/mtools/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic aS:Lcom/android/mtools/MPay;

.field private final synthetic aT:Lcom/android/mtools/f;


# direct methods
.method constructor <init>(Lcom/android/mtools/MPay;Lcom/android/mtools/f;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mtools/z;->aS:Lcom/android/mtools/MPay;

    iput-object p2, p0, Lcom/android/mtools/z;->aT:Lcom/android/mtools/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/mtools/z;->aS:Lcom/android/mtools/MPay;

    iget-object v1, p0, Lcom/android/mtools/z;->aT:Lcom/android/mtools/f;

    invoke-virtual {v1}, Lcom/android/mtools/f;->w()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mtools/z;->aT:Lcom/android/mtools/f;

    invoke-virtual {v2}, Lcom/android/mtools/f;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mtools/MPay;->a(Lcom/android/mtools/MPay;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/mtools/MPDialog;->a(Landroid/content/DialogInterface;)V

    return-void
.end method
