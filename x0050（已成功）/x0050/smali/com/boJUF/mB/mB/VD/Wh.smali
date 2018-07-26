.class final Lcom/boJUF/mB/mB/VD/Wh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic LA:Lcom/boJUF/mB/mB/VD/vG;


# direct methods
.method constructor <init>(Lcom/boJUF/mB/mB/VD/vG;)V
    .locals 0

    iput-object p1, p0, Lcom/boJUF/mB/mB/VD/Wh;->LA:Lcom/boJUF/mB/mB/VD/vG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Wh;->LA:Lcom/boJUF/mB/mB/VD/vG;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boJUF/mB/mB/VD/vG;->LA(Z)V

    iget-object v0, p0, Lcom/boJUF/mB/mB/VD/Wh;->LA:Lcom/boJUF/mB/mB/VD/vG;

    invoke-virtual {v0}, Lcom/boJUF/mB/mB/VD/vG;->LA()V

    return-void
.end method
