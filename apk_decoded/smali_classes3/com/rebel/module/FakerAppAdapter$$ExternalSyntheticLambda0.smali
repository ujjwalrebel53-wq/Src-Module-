.class public final synthetic Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/rebel/module/FakerAppAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/rebel/module/FakerAppAdapter$AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/rebel/module/FakerAppAdapter;ZLcom/rebel/module/FakerAppAdapter$AppInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/FakerAppAdapter;

    iput-boolean p2, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/rebel/module/FakerAppAdapter$AppInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/rebel/module/FakerAppAdapter;

    iget-boolean v1, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/rebel/module/FakerAppAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/rebel/module/FakerAppAdapter$AppInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/rebel/module/FakerAppAdapter;->lambda$onBindViewHolder$0$com-src-module-FakerAppAdapter(ZLcom/rebel/module/FakerAppAdapter$AppInfo;Landroid/view/View;)V

    return-void
.end method
