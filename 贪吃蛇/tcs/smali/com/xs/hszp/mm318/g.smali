.class final Lcom/xs/hszp/mm318/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/IOnXsMm318Listener;I)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/g;->a:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    iput p2, p0, Lcom/xs/hszp/mm318/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/g;->a:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xs/hszp/mm318/g;->a:Lcom/xs/hszp/mm318/IOnXsMm318Listener;

    iget v1, p0, Lcom/xs/hszp/mm318/g;->b:I

    invoke-interface {v0, v1}, Lcom/xs/hszp/mm318/IOnXsMm318Listener;->onPayResult(I)V

    :cond_0
    return-void
.end method
