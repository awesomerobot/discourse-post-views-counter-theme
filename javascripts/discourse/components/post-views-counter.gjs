import { themePrefix } from "virtual:theme";
import dIcon from "discourse/ui-kit/helpers/d-icon";
import { i18n } from "discourse-i18n";

const PostViewsCounter = <template>
  {{#if @post.reads}}
    <div
      class="post-info post-views-counter"
      title={{i18n (themePrefix "views") count=@post.reads}}
    >
      {{@post.reads}}{{dIcon "far-eye"}}
    </div>
  {{/if}}
</template>;

export default PostViewsCounter;
