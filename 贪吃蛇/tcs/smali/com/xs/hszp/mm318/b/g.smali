.class final Lcom/xs/hszp/mm318/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/BroadcastReceiver;

.field private final synthetic b:Lcom/xs/hszp/mm318/b/j;


# direct methods
.method constructor <init>(Landroid/content/BroadcastReceiver;Lcom/xs/hszp/mm318/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xs/hszp/mm318/b/g;->a:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/xs/hszp/mm318/b/g;->b:Lcom/xs/hszp/mm318/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/g;->a:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/xs/hszp/mm318/b/g;->b:Lcom/xs/hszp/mm318/b/j;

    iget-object v1, v1, Lcom/xs/hszp/mm318/b/j;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xs/hszp/mm318/b/g;->b:Lcom/xs/hszp/mm318/b/j;

    iget-object v0, v0, Lcom/xs/hszp/mm318/b/j;->a:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xs/hszp/mm318/b/e;->a(Ljava/lang/String;I)V

    return-void
.end method
