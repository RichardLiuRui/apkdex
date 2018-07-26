.class final Lcom/boJUF/mB/mB/VD/Ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/VD/Ke;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/Ke;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Ec;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Ec;->LA:Lcom/boJUF/mB/mB/VD/Ke;

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/Ke;->LA(Lcom/boJUF/mB/mB/VD/Ke;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA(Landroid/content/Context;)Lcom/boJUF/mB/mB/VD/vG;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Z)V

    return-void
.end method
