.class Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;
.super Ljava/lang/Object;
.source "ReviewsFragmentXLarge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->configureViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->resetForm()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$400(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 181
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->collapseForm()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$000(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge$6;->this$0:Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;

    #calls: Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->populateForm()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;->access$500(Lcom/google/android/finsky/activities/ReviewsFragmentXLarge;)V

    .line 183
    return-void
.end method
