from pydantic import BaseModel, ConfigDict, computed_field
from pydantic.alias_generators import to_camel

class SlugIdUrlMixin(BaseModel):
    model_config = ConfigDict(from_attributes=True,
                        alias_generator=to_camel,
                        populate_by_name=True)
    id: int
    slug: str
    public_id: str
    title: str

    @computed_field
    @property
    def url(self) -> str:
        return f"{self.slug}--{self.public_id}"



    
