.class public final synthetic Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/XposedHook;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/XposedHook;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/XposedHook;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/rebel/module/XposedHook$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/XposedHook;

    invoke-virtual {v0}, Lcom/rebel/module/XposedHook;->lambda$addToBatch$1$com-src-module-XposedHook()V

    return-void
.end method
