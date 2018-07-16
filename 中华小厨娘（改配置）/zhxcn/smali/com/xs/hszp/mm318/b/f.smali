.class final Lcom/xs/hszp/mm318/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/xs/hszp/mm318/b/j;

.field private final synthetic b:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/b/f;->a:Lcom/xs/hszp/mm318/b/j;

    iput-object p2, p0, Lcom/xs/hszp/mm318/b/f;->b:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/f;->a:Lcom/xs/hszp/mm318/b/j;

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/f;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/f;->a:Lcom/xs/hszp/mm318/b/j;

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/f;->b:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->b(Lcom/xs/hszp/mm318/b/j;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
