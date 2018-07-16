.class final Lcom/door/frame/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/door/frame/BaobeiActivity;


# direct methods
.method constructor <init>(Lcom/door/frame/BaobeiActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/door/frame/c;->a:Lcom/door/frame/BaobeiActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/door/frame/c;->a:Lcom/door/frame/BaobeiActivity;

    invoke-virtual {v0}, Lcom/door/frame/BaobeiActivity;->finish()V

    .line 78
    return-void
.end method
